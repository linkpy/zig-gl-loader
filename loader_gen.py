
import re
import xml.etree.ElementTree as ET


TYPE_MAP = {
  "GLenum": "u32",
  "GLboolean": "bool",
  "GLbitfield": "u32",
  "GLbyte": "i8",
  "GLubyte": "u8",
  "GLshort": "i16",
  "GLushort": "u16",
  "GLint": "i32",
  "GLuint": "u32",
  "GLclampx": "i32",
  "GLsizei": "i32",
  "GLfloat": "f32",
  "GLclampf": "f32",
  "GLdouble": "f64",
  "GLclampd": "f64",
  "GLchar": "u8",
  "GLhalf": "u16",
  "GLfixed": "i32",
  "GLintptr": "isize",
  "GLsizeiptr": "isize",
  "GLint64": "i64",
  "GLuint64": "u64",
  "GLsync": "Sync",
  "GLDEBUGPROC": "DebugFn",
}



class Enum:
  def __init__(self, name, value):
    self.name = name
    self.value = value

class Command:
  def __init__(self, name, rtype, arguments):
    self.name = name
    self.return_type = rtype
    self.arguments = arguments

class Argument:
  def __init__(self, name, type):
    self.name = name
    self.type = type

class Feature:
  def __init__(self, api, version, enums, cmds):
    self.api = api
    self.version = version
    self.enums = enums
    self.commands = cmds


api_tree = ET.parse('gl.xml')
api_root = api_tree.getroot()

enums = {}
commands = {}
features = []
enums_to_generate = {}
commands_to_generate = {}

# loading api data

for child in api_root:
  if child.tag == "enums":
    for enum_node in child:
      enum = Enum(
        enum_node.get("name"),
        enum_node.get("value")
      )

      enums[enum.name] = enum
  
  elif child.tag == "commands":
    for cmd_node in child:
      args = []

      for arg_node in cmd_node.findall("param"):
        
        type = None

        if arg_node.find("ptype") != None:
          ptype = arg_node.find("ptype")
          type = ptype.text

          if arg_node.get("len") != None or (ptype.tail != None and ptype.tail.strip() == "*"): 
            if arg_node.text != None and arg_node.text.startswith("const"):
              if type == "GLchar":
                type = "[*:0]const " + TYPE_MAP.get(type, type)
              else:
                type = "[*]const " + TYPE_MAP.get(type, type)

              if ptype.tail != None and ptype.tail.strip() == "*const*":
                type = "[*]const " + type
            else:
              type = "[*]" + TYPE_MAP.get(type, type)
        else:
          if arg_node.text.startswith("const void *"):
            type = "?*const anyopaque"
          elif arg_node.text.startswith("void *"):
            type = "?*anyopaque"
          else:
            print(arg_node.text)
            raise "Stinky"

        args.append(Argument(
          arg_node.find("name").text,
          type
        ))
      
      proto = cmd_node.find("proto")
      rtype = None

      if proto.find("ptype") != None:
        rtype = proto.find("ptype").text
      else:
        rtype = "void"

      cmd = Command(
        proto.find("name").text,
        rtype,
        args
      )
      commands[cmd.name] = cmd
  
  elif child.tag == "feature":
    api = child.get("api")
    version = child.get("number")
    req_enums = []
    req_cmds = []

    for required in child:
      for item in required:
        if item.tag == "enum":
          req_enums.append(item.get("name"))
        elif item.tag == "command":
          req_cmds.append(item.get("name"))
    
    features.append(Feature(
      api, version, req_enums, req_cmds
    ))

API = "gles2"
enums_to_gen = []
cmds_to_gen = []

for feature in features:
  if feature.api == API:
    enums_to_gen.extend(feature.enums)
    cmds_to_gen.extend(feature.commands)

enums_to_gen = list(dict.fromkeys(enums_to_gen))
cmds_to_gen = list(dict.fromkeys(cmds_to_gen))


def clean_command_name(name):
  name = name[2:]
  name = name[0].lower() + name[1:]
  return name



with open("gl.zig", "w") as f:
  f.write("""
const std = @import("std");
const GL = @This();

pub const Error = error {
  command_not_found
};

pub fn load(
  self: *GL,
  l: LoadFn
) Error!void {
""")

  for cmd_name in cmds_to_gen:
    cmd = commands[cmd_name]
    name = clean_command_name(cmd.name)
    f.write('  self.{} = try loadCommand(l, "{}", {}Fn);\n'.format(
      name, cmd.name, cmd.name
    ))
  
  f.write("""
}

fn loadCommand(
  l: LoadFn,
  name: [:0]const u8,
  comptime T: type
) Error!T {
  if( l(name) ) |ptr| {
    return @ptrCast(T, ptr);
  } else {
    std.log.err("Unable to load command {s}.", .{ name });
    return Error.command_not_found;
  }
}

pub const LoadFn = fn([:0]const u8) ?*anyopaque;
pub const DebugFn = fn(source: u32, typ: u32, id: u32, severity: u32, len: i32, msg: [*:0]const u8) callconv(.C) void;

pub const Sync = *opaque{};



""")

  for enum_name in enums_to_gen:
    enum = enums[enum_name]
    f.write("pub const {}: u32 = {};\n".format(
      enum.name[3:],
      enum.value,
    ))
  
  f.write("\n\n\n")

  for cmd_name in cmds_to_gen:
    cmd = commands[cmd_name]
    f.write("{}: {}Fn,\n".format(
      clean_command_name(cmd.name),
      cmd.name
    ))
  
  f.write("\n\n\n")

  for cmd_name in cmds_to_gen:
    cmd = commands[cmd_name]

    name = cmd.name + "Fn"
    args = []

    for arg in cmd.arguments:
      args.append("{}: {}".format(
        arg.name, 
        TYPE_MAP.get(arg.type, arg.type)
      ))
    
    rtype = TYPE_MAP.get(cmd.return_type, cmd.return_type)
    f.write("pub const {} = fn( {} ) callconv(.C) {};\n".format(
      name, ", ".join(args), rtype
    ))



