# Simple OpenGL loader for Zig

## Generate the loader

1. Update gl.xml (if necessary)
2. Open loader_gen.py
3. Line 149, change `API` to the one you want (gl, gles).
4. Line 150, change `VERSION` to the one you want
4. Run the python file.

If everything's ok, there is a file called "gl.zig" that you can use.

## API

The whole gl.zig file is a structure.

```zig
const GL = @import("./gl.zig");

// not adviced as this structure holds all of the pointers to the OpenGL 
// commands.
var gl = GL {};

// loadProc must has the signature `fn([:0]const u8) ?*anyopaque`.
try gl.load(loadProc); 

// at this point, all of the OpenGL functions are loaded and can be called.
gl.clear(GL.COLOR_BUFFER_BIT);
```

The OpenGL functions are renamed as such: 

- The `gl` prefix is stripped.
- The first letter is not capitalised

The OpenGL enums are renamed as such:

- The `GL_` prefix is stripped.

The OpenGL types are mapped to their Zig equivalent (ie, `GLenum` becomes `u32`, `GLfloat` becomes `f32`) except :

- `GLsync` becomes `GL.Sync` (`GL` being the imported structure) ;
- `GLDEBUGPROC` becomes `GL.DebugFn`.