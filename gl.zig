
const std = @import("std");
const GL = @This();

pub const Error = error {
  command_not_found
};

pub fn load(
  self: *GL,
  l: LoadFn
) Error!void {
  self.activeTexture = try loadCommand(l, "glActiveTexture", glActiveTextureFn);
  self.attachShader = try loadCommand(l, "glAttachShader", glAttachShaderFn);
  self.bindAttribLocation = try loadCommand(l, "glBindAttribLocation", glBindAttribLocationFn);
  self.bindBuffer = try loadCommand(l, "glBindBuffer", glBindBufferFn);
  self.bindFramebuffer = try loadCommand(l, "glBindFramebuffer", glBindFramebufferFn);
  self.bindRenderbuffer = try loadCommand(l, "glBindRenderbuffer", glBindRenderbufferFn);
  self.bindTexture = try loadCommand(l, "glBindTexture", glBindTextureFn);
  self.blendColor = try loadCommand(l, "glBlendColor", glBlendColorFn);
  self.blendEquation = try loadCommand(l, "glBlendEquation", glBlendEquationFn);
  self.blendEquationSeparate = try loadCommand(l, "glBlendEquationSeparate", glBlendEquationSeparateFn);
  self.blendFunc = try loadCommand(l, "glBlendFunc", glBlendFuncFn);
  self.blendFuncSeparate = try loadCommand(l, "glBlendFuncSeparate", glBlendFuncSeparateFn);
  self.bufferData = try loadCommand(l, "glBufferData", glBufferDataFn);
  self.bufferSubData = try loadCommand(l, "glBufferSubData", glBufferSubDataFn);
  self.checkFramebufferStatus = try loadCommand(l, "glCheckFramebufferStatus", glCheckFramebufferStatusFn);
  self.clear = try loadCommand(l, "glClear", glClearFn);
  self.clearColor = try loadCommand(l, "glClearColor", glClearColorFn);
  self.clearDepthf = try loadCommand(l, "glClearDepthf", glClearDepthfFn);
  self.clearStencil = try loadCommand(l, "glClearStencil", glClearStencilFn);
  self.colorMask = try loadCommand(l, "glColorMask", glColorMaskFn);
  self.compileShader = try loadCommand(l, "glCompileShader", glCompileShaderFn);
  self.compressedTexImage2D = try loadCommand(l, "glCompressedTexImage2D", glCompressedTexImage2DFn);
  self.compressedTexSubImage2D = try loadCommand(l, "glCompressedTexSubImage2D", glCompressedTexSubImage2DFn);
  self.copyTexImage2D = try loadCommand(l, "glCopyTexImage2D", glCopyTexImage2DFn);
  self.copyTexSubImage2D = try loadCommand(l, "glCopyTexSubImage2D", glCopyTexSubImage2DFn);
  self.createProgram = try loadCommand(l, "glCreateProgram", glCreateProgramFn);
  self.createShader = try loadCommand(l, "glCreateShader", glCreateShaderFn);
  self.cullFace = try loadCommand(l, "glCullFace", glCullFaceFn);
  self.deleteBuffers = try loadCommand(l, "glDeleteBuffers", glDeleteBuffersFn);
  self.deleteFramebuffers = try loadCommand(l, "glDeleteFramebuffers", glDeleteFramebuffersFn);
  self.deleteProgram = try loadCommand(l, "glDeleteProgram", glDeleteProgramFn);
  self.deleteRenderbuffers = try loadCommand(l, "glDeleteRenderbuffers", glDeleteRenderbuffersFn);
  self.deleteShader = try loadCommand(l, "glDeleteShader", glDeleteShaderFn);
  self.deleteTextures = try loadCommand(l, "glDeleteTextures", glDeleteTexturesFn);
  self.depthFunc = try loadCommand(l, "glDepthFunc", glDepthFuncFn);
  self.depthMask = try loadCommand(l, "glDepthMask", glDepthMaskFn);
  self.depthRangef = try loadCommand(l, "glDepthRangef", glDepthRangefFn);
  self.detachShader = try loadCommand(l, "glDetachShader", glDetachShaderFn);
  self.disable = try loadCommand(l, "glDisable", glDisableFn);
  self.disableVertexAttribArray = try loadCommand(l, "glDisableVertexAttribArray", glDisableVertexAttribArrayFn);
  self.drawArrays = try loadCommand(l, "glDrawArrays", glDrawArraysFn);
  self.drawElements = try loadCommand(l, "glDrawElements", glDrawElementsFn);
  self.enable = try loadCommand(l, "glEnable", glEnableFn);
  self.enableVertexAttribArray = try loadCommand(l, "glEnableVertexAttribArray", glEnableVertexAttribArrayFn);
  self.finish = try loadCommand(l, "glFinish", glFinishFn);
  self.flush = try loadCommand(l, "glFlush", glFlushFn);
  self.framebufferRenderbuffer = try loadCommand(l, "glFramebufferRenderbuffer", glFramebufferRenderbufferFn);
  self.framebufferTexture2D = try loadCommand(l, "glFramebufferTexture2D", glFramebufferTexture2DFn);
  self.frontFace = try loadCommand(l, "glFrontFace", glFrontFaceFn);
  self.genBuffers = try loadCommand(l, "glGenBuffers", glGenBuffersFn);
  self.generateMipmap = try loadCommand(l, "glGenerateMipmap", glGenerateMipmapFn);
  self.genFramebuffers = try loadCommand(l, "glGenFramebuffers", glGenFramebuffersFn);
  self.genRenderbuffers = try loadCommand(l, "glGenRenderbuffers", glGenRenderbuffersFn);
  self.genTextures = try loadCommand(l, "glGenTextures", glGenTexturesFn);
  self.getActiveAttrib = try loadCommand(l, "glGetActiveAttrib", glGetActiveAttribFn);
  self.getActiveUniform = try loadCommand(l, "glGetActiveUniform", glGetActiveUniformFn);
  self.getAttachedShaders = try loadCommand(l, "glGetAttachedShaders", glGetAttachedShadersFn);
  self.getAttribLocation = try loadCommand(l, "glGetAttribLocation", glGetAttribLocationFn);
  self.getBooleanv = try loadCommand(l, "glGetBooleanv", glGetBooleanvFn);
  self.getBufferParameteriv = try loadCommand(l, "glGetBufferParameteriv", glGetBufferParameterivFn);
  self.getError = try loadCommand(l, "glGetError", glGetErrorFn);
  self.getFloatv = try loadCommand(l, "glGetFloatv", glGetFloatvFn);
  self.getFramebufferAttachmentParameteriv = try loadCommand(l, "glGetFramebufferAttachmentParameteriv", glGetFramebufferAttachmentParameterivFn);
  self.getIntegerv = try loadCommand(l, "glGetIntegerv", glGetIntegervFn);
  self.getProgramiv = try loadCommand(l, "glGetProgramiv", glGetProgramivFn);
  self.getProgramInfoLog = try loadCommand(l, "glGetProgramInfoLog", glGetProgramInfoLogFn);
  self.getRenderbufferParameteriv = try loadCommand(l, "glGetRenderbufferParameteriv", glGetRenderbufferParameterivFn);
  self.getShaderiv = try loadCommand(l, "glGetShaderiv", glGetShaderivFn);
  self.getShaderInfoLog = try loadCommand(l, "glGetShaderInfoLog", glGetShaderInfoLogFn);
  self.getShaderPrecisionFormat = try loadCommand(l, "glGetShaderPrecisionFormat", glGetShaderPrecisionFormatFn);
  self.getShaderSource = try loadCommand(l, "glGetShaderSource", glGetShaderSourceFn);
  self.getString = try loadCommand(l, "glGetString", glGetStringFn);
  self.getTexParameterfv = try loadCommand(l, "glGetTexParameterfv", glGetTexParameterfvFn);
  self.getTexParameteriv = try loadCommand(l, "glGetTexParameteriv", glGetTexParameterivFn);
  self.getUniformfv = try loadCommand(l, "glGetUniformfv", glGetUniformfvFn);
  self.getUniformiv = try loadCommand(l, "glGetUniformiv", glGetUniformivFn);
  self.getUniformLocation = try loadCommand(l, "glGetUniformLocation", glGetUniformLocationFn);
  self.getVertexAttribfv = try loadCommand(l, "glGetVertexAttribfv", glGetVertexAttribfvFn);
  self.getVertexAttribiv = try loadCommand(l, "glGetVertexAttribiv", glGetVertexAttribivFn);
  self.getVertexAttribPointerv = try loadCommand(l, "glGetVertexAttribPointerv", glGetVertexAttribPointervFn);
  self.hint = try loadCommand(l, "glHint", glHintFn);
  self.isBuffer = try loadCommand(l, "glIsBuffer", glIsBufferFn);
  self.isEnabled = try loadCommand(l, "glIsEnabled", glIsEnabledFn);
  self.isFramebuffer = try loadCommand(l, "glIsFramebuffer", glIsFramebufferFn);
  self.isProgram = try loadCommand(l, "glIsProgram", glIsProgramFn);
  self.isRenderbuffer = try loadCommand(l, "glIsRenderbuffer", glIsRenderbufferFn);
  self.isShader = try loadCommand(l, "glIsShader", glIsShaderFn);
  self.isTexture = try loadCommand(l, "glIsTexture", glIsTextureFn);
  self.lineWidth = try loadCommand(l, "glLineWidth", glLineWidthFn);
  self.linkProgram = try loadCommand(l, "glLinkProgram", glLinkProgramFn);
  self.pixelStorei = try loadCommand(l, "glPixelStorei", glPixelStoreiFn);
  self.polygonOffset = try loadCommand(l, "glPolygonOffset", glPolygonOffsetFn);
  self.readPixels = try loadCommand(l, "glReadPixels", glReadPixelsFn);
  self.releaseShaderCompiler = try loadCommand(l, "glReleaseShaderCompiler", glReleaseShaderCompilerFn);
  self.renderbufferStorage = try loadCommand(l, "glRenderbufferStorage", glRenderbufferStorageFn);
  self.sampleCoverage = try loadCommand(l, "glSampleCoverage", glSampleCoverageFn);
  self.scissor = try loadCommand(l, "glScissor", glScissorFn);
  self.shaderBinary = try loadCommand(l, "glShaderBinary", glShaderBinaryFn);
  self.shaderSource = try loadCommand(l, "glShaderSource", glShaderSourceFn);
  self.stencilFunc = try loadCommand(l, "glStencilFunc", glStencilFuncFn);
  self.stencilFuncSeparate = try loadCommand(l, "glStencilFuncSeparate", glStencilFuncSeparateFn);
  self.stencilMask = try loadCommand(l, "glStencilMask", glStencilMaskFn);
  self.stencilMaskSeparate = try loadCommand(l, "glStencilMaskSeparate", glStencilMaskSeparateFn);
  self.stencilOp = try loadCommand(l, "glStencilOp", glStencilOpFn);
  self.stencilOpSeparate = try loadCommand(l, "glStencilOpSeparate", glStencilOpSeparateFn);
  self.texImage2D = try loadCommand(l, "glTexImage2D", glTexImage2DFn);
  self.texParameterf = try loadCommand(l, "glTexParameterf", glTexParameterfFn);
  self.texParameterfv = try loadCommand(l, "glTexParameterfv", glTexParameterfvFn);
  self.texParameteri = try loadCommand(l, "glTexParameteri", glTexParameteriFn);
  self.texParameteriv = try loadCommand(l, "glTexParameteriv", glTexParameterivFn);
  self.texSubImage2D = try loadCommand(l, "glTexSubImage2D", glTexSubImage2DFn);
  self.uniform1f = try loadCommand(l, "glUniform1f", glUniform1fFn);
  self.uniform1fv = try loadCommand(l, "glUniform1fv", glUniform1fvFn);
  self.uniform1i = try loadCommand(l, "glUniform1i", glUniform1iFn);
  self.uniform1iv = try loadCommand(l, "glUniform1iv", glUniform1ivFn);
  self.uniform2f = try loadCommand(l, "glUniform2f", glUniform2fFn);
  self.uniform2fv = try loadCommand(l, "glUniform2fv", glUniform2fvFn);
  self.uniform2i = try loadCommand(l, "glUniform2i", glUniform2iFn);
  self.uniform2iv = try loadCommand(l, "glUniform2iv", glUniform2ivFn);
  self.uniform3f = try loadCommand(l, "glUniform3f", glUniform3fFn);
  self.uniform3fv = try loadCommand(l, "glUniform3fv", glUniform3fvFn);
  self.uniform3i = try loadCommand(l, "glUniform3i", glUniform3iFn);
  self.uniform3iv = try loadCommand(l, "glUniform3iv", glUniform3ivFn);
  self.uniform4f = try loadCommand(l, "glUniform4f", glUniform4fFn);
  self.uniform4fv = try loadCommand(l, "glUniform4fv", glUniform4fvFn);
  self.uniform4i = try loadCommand(l, "glUniform4i", glUniform4iFn);
  self.uniform4iv = try loadCommand(l, "glUniform4iv", glUniform4ivFn);
  self.uniformMatrix2fv = try loadCommand(l, "glUniformMatrix2fv", glUniformMatrix2fvFn);
  self.uniformMatrix3fv = try loadCommand(l, "glUniformMatrix3fv", glUniformMatrix3fvFn);
  self.uniformMatrix4fv = try loadCommand(l, "glUniformMatrix4fv", glUniformMatrix4fvFn);
  self.useProgram = try loadCommand(l, "glUseProgram", glUseProgramFn);
  self.validateProgram = try loadCommand(l, "glValidateProgram", glValidateProgramFn);
  self.vertexAttrib1f = try loadCommand(l, "glVertexAttrib1f", glVertexAttrib1fFn);
  self.vertexAttrib1fv = try loadCommand(l, "glVertexAttrib1fv", glVertexAttrib1fvFn);
  self.vertexAttrib2f = try loadCommand(l, "glVertexAttrib2f", glVertexAttrib2fFn);
  self.vertexAttrib2fv = try loadCommand(l, "glVertexAttrib2fv", glVertexAttrib2fvFn);
  self.vertexAttrib3f = try loadCommand(l, "glVertexAttrib3f", glVertexAttrib3fFn);
  self.vertexAttrib3fv = try loadCommand(l, "glVertexAttrib3fv", glVertexAttrib3fvFn);
  self.vertexAttrib4f = try loadCommand(l, "glVertexAttrib4f", glVertexAttrib4fFn);
  self.vertexAttrib4fv = try loadCommand(l, "glVertexAttrib4fv", glVertexAttrib4fvFn);
  self.vertexAttribPointer = try loadCommand(l, "glVertexAttribPointer", glVertexAttribPointerFn);
  self.viewport = try loadCommand(l, "glViewport", glViewportFn);
  self.readBuffer = try loadCommand(l, "glReadBuffer", glReadBufferFn);
  self.drawRangeElements = try loadCommand(l, "glDrawRangeElements", glDrawRangeElementsFn);
  self.texImage3D = try loadCommand(l, "glTexImage3D", glTexImage3DFn);
  self.texSubImage3D = try loadCommand(l, "glTexSubImage3D", glTexSubImage3DFn);
  self.copyTexSubImage3D = try loadCommand(l, "glCopyTexSubImage3D", glCopyTexSubImage3DFn);
  self.compressedTexImage3D = try loadCommand(l, "glCompressedTexImage3D", glCompressedTexImage3DFn);
  self.compressedTexSubImage3D = try loadCommand(l, "glCompressedTexSubImage3D", glCompressedTexSubImage3DFn);
  self.genQueries = try loadCommand(l, "glGenQueries", glGenQueriesFn);
  self.deleteQueries = try loadCommand(l, "glDeleteQueries", glDeleteQueriesFn);
  self.isQuery = try loadCommand(l, "glIsQuery", glIsQueryFn);
  self.beginQuery = try loadCommand(l, "glBeginQuery", glBeginQueryFn);
  self.endQuery = try loadCommand(l, "glEndQuery", glEndQueryFn);
  self.getQueryiv = try loadCommand(l, "glGetQueryiv", glGetQueryivFn);
  self.getQueryObjectuiv = try loadCommand(l, "glGetQueryObjectuiv", glGetQueryObjectuivFn);
  self.unmapBuffer = try loadCommand(l, "glUnmapBuffer", glUnmapBufferFn);
  self.getBufferPointerv = try loadCommand(l, "glGetBufferPointerv", glGetBufferPointervFn);
  self.drawBuffers = try loadCommand(l, "glDrawBuffers", glDrawBuffersFn);
  self.uniformMatrix2x3fv = try loadCommand(l, "glUniformMatrix2x3fv", glUniformMatrix2x3fvFn);
  self.uniformMatrix3x2fv = try loadCommand(l, "glUniformMatrix3x2fv", glUniformMatrix3x2fvFn);
  self.uniformMatrix2x4fv = try loadCommand(l, "glUniformMatrix2x4fv", glUniformMatrix2x4fvFn);
  self.uniformMatrix4x2fv = try loadCommand(l, "glUniformMatrix4x2fv", glUniformMatrix4x2fvFn);
  self.uniformMatrix3x4fv = try loadCommand(l, "glUniformMatrix3x4fv", glUniformMatrix3x4fvFn);
  self.uniformMatrix4x3fv = try loadCommand(l, "glUniformMatrix4x3fv", glUniformMatrix4x3fvFn);
  self.blitFramebuffer = try loadCommand(l, "glBlitFramebuffer", glBlitFramebufferFn);
  self.renderbufferStorageMultisample = try loadCommand(l, "glRenderbufferStorageMultisample", glRenderbufferStorageMultisampleFn);
  self.framebufferTextureLayer = try loadCommand(l, "glFramebufferTextureLayer", glFramebufferTextureLayerFn);
  self.mapBufferRange = try loadCommand(l, "glMapBufferRange", glMapBufferRangeFn);
  self.flushMappedBufferRange = try loadCommand(l, "glFlushMappedBufferRange", glFlushMappedBufferRangeFn);
  self.bindVertexArray = try loadCommand(l, "glBindVertexArray", glBindVertexArrayFn);
  self.deleteVertexArrays = try loadCommand(l, "glDeleteVertexArrays", glDeleteVertexArraysFn);
  self.genVertexArrays = try loadCommand(l, "glGenVertexArrays", glGenVertexArraysFn);
  self.isVertexArray = try loadCommand(l, "glIsVertexArray", glIsVertexArrayFn);
  self.getIntegeri_v = try loadCommand(l, "glGetIntegeri_v", glGetIntegeri_vFn);
  self.beginTransformFeedback = try loadCommand(l, "glBeginTransformFeedback", glBeginTransformFeedbackFn);
  self.endTransformFeedback = try loadCommand(l, "glEndTransformFeedback", glEndTransformFeedbackFn);
  self.bindBufferRange = try loadCommand(l, "glBindBufferRange", glBindBufferRangeFn);
  self.bindBufferBase = try loadCommand(l, "glBindBufferBase", glBindBufferBaseFn);
  self.transformFeedbackVaryings = try loadCommand(l, "glTransformFeedbackVaryings", glTransformFeedbackVaryingsFn);
  self.getTransformFeedbackVarying = try loadCommand(l, "glGetTransformFeedbackVarying", glGetTransformFeedbackVaryingFn);
  self.vertexAttribIPointer = try loadCommand(l, "glVertexAttribIPointer", glVertexAttribIPointerFn);
  self.getVertexAttribIiv = try loadCommand(l, "glGetVertexAttribIiv", glGetVertexAttribIivFn);
  self.getVertexAttribIuiv = try loadCommand(l, "glGetVertexAttribIuiv", glGetVertexAttribIuivFn);
  self.vertexAttribI4i = try loadCommand(l, "glVertexAttribI4i", glVertexAttribI4iFn);
  self.vertexAttribI4ui = try loadCommand(l, "glVertexAttribI4ui", glVertexAttribI4uiFn);
  self.vertexAttribI4iv = try loadCommand(l, "glVertexAttribI4iv", glVertexAttribI4ivFn);
  self.vertexAttribI4uiv = try loadCommand(l, "glVertexAttribI4uiv", glVertexAttribI4uivFn);
  self.getUniformuiv = try loadCommand(l, "glGetUniformuiv", glGetUniformuivFn);
  self.getFragDataLocation = try loadCommand(l, "glGetFragDataLocation", glGetFragDataLocationFn);
  self.uniform1ui = try loadCommand(l, "glUniform1ui", glUniform1uiFn);
  self.uniform2ui = try loadCommand(l, "glUniform2ui", glUniform2uiFn);
  self.uniform3ui = try loadCommand(l, "glUniform3ui", glUniform3uiFn);
  self.uniform4ui = try loadCommand(l, "glUniform4ui", glUniform4uiFn);
  self.uniform1uiv = try loadCommand(l, "glUniform1uiv", glUniform1uivFn);
  self.uniform2uiv = try loadCommand(l, "glUniform2uiv", glUniform2uivFn);
  self.uniform3uiv = try loadCommand(l, "glUniform3uiv", glUniform3uivFn);
  self.uniform4uiv = try loadCommand(l, "glUniform4uiv", glUniform4uivFn);
  self.clearBufferiv = try loadCommand(l, "glClearBufferiv", glClearBufferivFn);
  self.clearBufferuiv = try loadCommand(l, "glClearBufferuiv", glClearBufferuivFn);
  self.clearBufferfv = try loadCommand(l, "glClearBufferfv", glClearBufferfvFn);
  self.clearBufferfi = try loadCommand(l, "glClearBufferfi", glClearBufferfiFn);
  self.getStringi = try loadCommand(l, "glGetStringi", glGetStringiFn);
  self.copyBufferSubData = try loadCommand(l, "glCopyBufferSubData", glCopyBufferSubDataFn);
  self.getUniformIndices = try loadCommand(l, "glGetUniformIndices", glGetUniformIndicesFn);
  self.getActiveUniformsiv = try loadCommand(l, "glGetActiveUniformsiv", glGetActiveUniformsivFn);
  self.getUniformBlockIndex = try loadCommand(l, "glGetUniformBlockIndex", glGetUniformBlockIndexFn);
  self.getActiveUniformBlockiv = try loadCommand(l, "glGetActiveUniformBlockiv", glGetActiveUniformBlockivFn);
  self.getActiveUniformBlockName = try loadCommand(l, "glGetActiveUniformBlockName", glGetActiveUniformBlockNameFn);
  self.uniformBlockBinding = try loadCommand(l, "glUniformBlockBinding", glUniformBlockBindingFn);
  self.drawArraysInstanced = try loadCommand(l, "glDrawArraysInstanced", glDrawArraysInstancedFn);
  self.drawElementsInstanced = try loadCommand(l, "glDrawElementsInstanced", glDrawElementsInstancedFn);
  self.fenceSync = try loadCommand(l, "glFenceSync", glFenceSyncFn);
  self.isSync = try loadCommand(l, "glIsSync", glIsSyncFn);
  self.deleteSync = try loadCommand(l, "glDeleteSync", glDeleteSyncFn);
  self.clientWaitSync = try loadCommand(l, "glClientWaitSync", glClientWaitSyncFn);
  self.waitSync = try loadCommand(l, "glWaitSync", glWaitSyncFn);
  self.getInteger64v = try loadCommand(l, "glGetInteger64v", glGetInteger64vFn);
  self.getSynciv = try loadCommand(l, "glGetSynciv", glGetSyncivFn);
  self.getInteger64i_v = try loadCommand(l, "glGetInteger64i_v", glGetInteger64i_vFn);
  self.getBufferParameteri64v = try loadCommand(l, "glGetBufferParameteri64v", glGetBufferParameteri64vFn);
  self.genSamplers = try loadCommand(l, "glGenSamplers", glGenSamplersFn);
  self.deleteSamplers = try loadCommand(l, "glDeleteSamplers", glDeleteSamplersFn);
  self.isSampler = try loadCommand(l, "glIsSampler", glIsSamplerFn);
  self.bindSampler = try loadCommand(l, "glBindSampler", glBindSamplerFn);
  self.samplerParameteri = try loadCommand(l, "glSamplerParameteri", glSamplerParameteriFn);
  self.samplerParameteriv = try loadCommand(l, "glSamplerParameteriv", glSamplerParameterivFn);
  self.samplerParameterf = try loadCommand(l, "glSamplerParameterf", glSamplerParameterfFn);
  self.samplerParameterfv = try loadCommand(l, "glSamplerParameterfv", glSamplerParameterfvFn);
  self.getSamplerParameteriv = try loadCommand(l, "glGetSamplerParameteriv", glGetSamplerParameterivFn);
  self.getSamplerParameterfv = try loadCommand(l, "glGetSamplerParameterfv", glGetSamplerParameterfvFn);
  self.vertexAttribDivisor = try loadCommand(l, "glVertexAttribDivisor", glVertexAttribDivisorFn);
  self.bindTransformFeedback = try loadCommand(l, "glBindTransformFeedback", glBindTransformFeedbackFn);
  self.deleteTransformFeedbacks = try loadCommand(l, "glDeleteTransformFeedbacks", glDeleteTransformFeedbacksFn);
  self.genTransformFeedbacks = try loadCommand(l, "glGenTransformFeedbacks", glGenTransformFeedbacksFn);
  self.isTransformFeedback = try loadCommand(l, "glIsTransformFeedback", glIsTransformFeedbackFn);
  self.pauseTransformFeedback = try loadCommand(l, "glPauseTransformFeedback", glPauseTransformFeedbackFn);
  self.resumeTransformFeedback = try loadCommand(l, "glResumeTransformFeedback", glResumeTransformFeedbackFn);
  self.getProgramBinary = try loadCommand(l, "glGetProgramBinary", glGetProgramBinaryFn);
  self.programBinary = try loadCommand(l, "glProgramBinary", glProgramBinaryFn);
  self.programParameteri = try loadCommand(l, "glProgramParameteri", glProgramParameteriFn);
  self.invalidateFramebuffer = try loadCommand(l, "glInvalidateFramebuffer", glInvalidateFramebufferFn);
  self.invalidateSubFramebuffer = try loadCommand(l, "glInvalidateSubFramebuffer", glInvalidateSubFramebufferFn);
  self.texStorage2D = try loadCommand(l, "glTexStorage2D", glTexStorage2DFn);
  self.texStorage3D = try loadCommand(l, "glTexStorage3D", glTexStorage3DFn);
  self.getInternalformativ = try loadCommand(l, "glGetInternalformativ", glGetInternalformativFn);
  self.dispatchCompute = try loadCommand(l, "glDispatchCompute", glDispatchComputeFn);
  self.dispatchComputeIndirect = try loadCommand(l, "glDispatchComputeIndirect", glDispatchComputeIndirectFn);
  self.drawArraysIndirect = try loadCommand(l, "glDrawArraysIndirect", glDrawArraysIndirectFn);
  self.drawElementsIndirect = try loadCommand(l, "glDrawElementsIndirect", glDrawElementsIndirectFn);
  self.framebufferParameteri = try loadCommand(l, "glFramebufferParameteri", glFramebufferParameteriFn);
  self.getFramebufferParameteriv = try loadCommand(l, "glGetFramebufferParameteriv", glGetFramebufferParameterivFn);
  self.getProgramInterfaceiv = try loadCommand(l, "glGetProgramInterfaceiv", glGetProgramInterfaceivFn);
  self.getProgramResourceIndex = try loadCommand(l, "glGetProgramResourceIndex", glGetProgramResourceIndexFn);
  self.getProgramResourceName = try loadCommand(l, "glGetProgramResourceName", glGetProgramResourceNameFn);
  self.getProgramResourceiv = try loadCommand(l, "glGetProgramResourceiv", glGetProgramResourceivFn);
  self.getProgramResourceLocation = try loadCommand(l, "glGetProgramResourceLocation", glGetProgramResourceLocationFn);
  self.useProgramStages = try loadCommand(l, "glUseProgramStages", glUseProgramStagesFn);
  self.activeShaderProgram = try loadCommand(l, "glActiveShaderProgram", glActiveShaderProgramFn);
  self.createShaderProgramv = try loadCommand(l, "glCreateShaderProgramv", glCreateShaderProgramvFn);
  self.bindProgramPipeline = try loadCommand(l, "glBindProgramPipeline", glBindProgramPipelineFn);
  self.deleteProgramPipelines = try loadCommand(l, "glDeleteProgramPipelines", glDeleteProgramPipelinesFn);
  self.genProgramPipelines = try loadCommand(l, "glGenProgramPipelines", glGenProgramPipelinesFn);
  self.isProgramPipeline = try loadCommand(l, "glIsProgramPipeline", glIsProgramPipelineFn);
  self.getProgramPipelineiv = try loadCommand(l, "glGetProgramPipelineiv", glGetProgramPipelineivFn);
  self.programUniform1i = try loadCommand(l, "glProgramUniform1i", glProgramUniform1iFn);
  self.programUniform2i = try loadCommand(l, "glProgramUniform2i", glProgramUniform2iFn);
  self.programUniform3i = try loadCommand(l, "glProgramUniform3i", glProgramUniform3iFn);
  self.programUniform4i = try loadCommand(l, "glProgramUniform4i", glProgramUniform4iFn);
  self.programUniform1ui = try loadCommand(l, "glProgramUniform1ui", glProgramUniform1uiFn);
  self.programUniform2ui = try loadCommand(l, "glProgramUniform2ui", glProgramUniform2uiFn);
  self.programUniform3ui = try loadCommand(l, "glProgramUniform3ui", glProgramUniform3uiFn);
  self.programUniform4ui = try loadCommand(l, "glProgramUniform4ui", glProgramUniform4uiFn);
  self.programUniform1f = try loadCommand(l, "glProgramUniform1f", glProgramUniform1fFn);
  self.programUniform2f = try loadCommand(l, "glProgramUniform2f", glProgramUniform2fFn);
  self.programUniform3f = try loadCommand(l, "glProgramUniform3f", glProgramUniform3fFn);
  self.programUniform4f = try loadCommand(l, "glProgramUniform4f", glProgramUniform4fFn);
  self.programUniform1iv = try loadCommand(l, "glProgramUniform1iv", glProgramUniform1ivFn);
  self.programUniform2iv = try loadCommand(l, "glProgramUniform2iv", glProgramUniform2ivFn);
  self.programUniform3iv = try loadCommand(l, "glProgramUniform3iv", glProgramUniform3ivFn);
  self.programUniform4iv = try loadCommand(l, "glProgramUniform4iv", glProgramUniform4ivFn);
  self.programUniform1uiv = try loadCommand(l, "glProgramUniform1uiv", glProgramUniform1uivFn);
  self.programUniform2uiv = try loadCommand(l, "glProgramUniform2uiv", glProgramUniform2uivFn);
  self.programUniform3uiv = try loadCommand(l, "glProgramUniform3uiv", glProgramUniform3uivFn);
  self.programUniform4uiv = try loadCommand(l, "glProgramUniform4uiv", glProgramUniform4uivFn);
  self.programUniform1fv = try loadCommand(l, "glProgramUniform1fv", glProgramUniform1fvFn);
  self.programUniform2fv = try loadCommand(l, "glProgramUniform2fv", glProgramUniform2fvFn);
  self.programUniform3fv = try loadCommand(l, "glProgramUniform3fv", glProgramUniform3fvFn);
  self.programUniform4fv = try loadCommand(l, "glProgramUniform4fv", glProgramUniform4fvFn);
  self.programUniformMatrix2fv = try loadCommand(l, "glProgramUniformMatrix2fv", glProgramUniformMatrix2fvFn);
  self.programUniformMatrix3fv = try loadCommand(l, "glProgramUniformMatrix3fv", glProgramUniformMatrix3fvFn);
  self.programUniformMatrix4fv = try loadCommand(l, "glProgramUniformMatrix4fv", glProgramUniformMatrix4fvFn);
  self.programUniformMatrix2x3fv = try loadCommand(l, "glProgramUniformMatrix2x3fv", glProgramUniformMatrix2x3fvFn);
  self.programUniformMatrix3x2fv = try loadCommand(l, "glProgramUniformMatrix3x2fv", glProgramUniformMatrix3x2fvFn);
  self.programUniformMatrix2x4fv = try loadCommand(l, "glProgramUniformMatrix2x4fv", glProgramUniformMatrix2x4fvFn);
  self.programUniformMatrix4x2fv = try loadCommand(l, "glProgramUniformMatrix4x2fv", glProgramUniformMatrix4x2fvFn);
  self.programUniformMatrix3x4fv = try loadCommand(l, "glProgramUniformMatrix3x4fv", glProgramUniformMatrix3x4fvFn);
  self.programUniformMatrix4x3fv = try loadCommand(l, "glProgramUniformMatrix4x3fv", glProgramUniformMatrix4x3fvFn);
  self.validateProgramPipeline = try loadCommand(l, "glValidateProgramPipeline", glValidateProgramPipelineFn);
  self.getProgramPipelineInfoLog = try loadCommand(l, "glGetProgramPipelineInfoLog", glGetProgramPipelineInfoLogFn);
  self.bindImageTexture = try loadCommand(l, "glBindImageTexture", glBindImageTextureFn);
  self.getBooleani_v = try loadCommand(l, "glGetBooleani_v", glGetBooleani_vFn);
  self.memoryBarrier = try loadCommand(l, "glMemoryBarrier", glMemoryBarrierFn);
  self.memoryBarrierByRegion = try loadCommand(l, "glMemoryBarrierByRegion", glMemoryBarrierByRegionFn);
  self.texStorage2DMultisample = try loadCommand(l, "glTexStorage2DMultisample", glTexStorage2DMultisampleFn);
  self.getMultisamplefv = try loadCommand(l, "glGetMultisamplefv", glGetMultisamplefvFn);
  self.sampleMaski = try loadCommand(l, "glSampleMaski", glSampleMaskiFn);
  self.getTexLevelParameteriv = try loadCommand(l, "glGetTexLevelParameteriv", glGetTexLevelParameterivFn);
  self.getTexLevelParameterfv = try loadCommand(l, "glGetTexLevelParameterfv", glGetTexLevelParameterfvFn);
  self.bindVertexBuffer = try loadCommand(l, "glBindVertexBuffer", glBindVertexBufferFn);
  self.vertexAttribFormat = try loadCommand(l, "glVertexAttribFormat", glVertexAttribFormatFn);
  self.vertexAttribIFormat = try loadCommand(l, "glVertexAttribIFormat", glVertexAttribIFormatFn);
  self.vertexAttribBinding = try loadCommand(l, "glVertexAttribBinding", glVertexAttribBindingFn);
  self.vertexBindingDivisor = try loadCommand(l, "glVertexBindingDivisor", glVertexBindingDivisorFn);
  self.blendBarrier = try loadCommand(l, "glBlendBarrier", glBlendBarrierFn);
  self.copyImageSubData = try loadCommand(l, "glCopyImageSubData", glCopyImageSubDataFn);
  self.debugMessageControl = try loadCommand(l, "glDebugMessageControl", glDebugMessageControlFn);
  self.debugMessageInsert = try loadCommand(l, "glDebugMessageInsert", glDebugMessageInsertFn);
  self.debugMessageCallback = try loadCommand(l, "glDebugMessageCallback", glDebugMessageCallbackFn);
  self.getDebugMessageLog = try loadCommand(l, "glGetDebugMessageLog", glGetDebugMessageLogFn);
  self.pushDebugGroup = try loadCommand(l, "glPushDebugGroup", glPushDebugGroupFn);
  self.popDebugGroup = try loadCommand(l, "glPopDebugGroup", glPopDebugGroupFn);
  self.objectLabel = try loadCommand(l, "glObjectLabel", glObjectLabelFn);
  self.getObjectLabel = try loadCommand(l, "glGetObjectLabel", glGetObjectLabelFn);
  self.objectPtrLabel = try loadCommand(l, "glObjectPtrLabel", glObjectPtrLabelFn);
  self.getObjectPtrLabel = try loadCommand(l, "glGetObjectPtrLabel", glGetObjectPtrLabelFn);
  self.getPointerv = try loadCommand(l, "glGetPointerv", glGetPointervFn);
  self.enablei = try loadCommand(l, "glEnablei", glEnableiFn);
  self.disablei = try loadCommand(l, "glDisablei", glDisableiFn);
  self.blendEquationi = try loadCommand(l, "glBlendEquationi", glBlendEquationiFn);
  self.blendEquationSeparatei = try loadCommand(l, "glBlendEquationSeparatei", glBlendEquationSeparateiFn);
  self.blendFunci = try loadCommand(l, "glBlendFunci", glBlendFunciFn);
  self.blendFuncSeparatei = try loadCommand(l, "glBlendFuncSeparatei", glBlendFuncSeparateiFn);
  self.colorMaski = try loadCommand(l, "glColorMaski", glColorMaskiFn);
  self.isEnabledi = try loadCommand(l, "glIsEnabledi", glIsEnablediFn);
  self.drawElementsBaseVertex = try loadCommand(l, "glDrawElementsBaseVertex", glDrawElementsBaseVertexFn);
  self.drawRangeElementsBaseVertex = try loadCommand(l, "glDrawRangeElementsBaseVertex", glDrawRangeElementsBaseVertexFn);
  self.drawElementsInstancedBaseVertex = try loadCommand(l, "glDrawElementsInstancedBaseVertex", glDrawElementsInstancedBaseVertexFn);
  self.framebufferTexture = try loadCommand(l, "glFramebufferTexture", glFramebufferTextureFn);
  self.primitiveBoundingBox = try loadCommand(l, "glPrimitiveBoundingBox", glPrimitiveBoundingBoxFn);
  self.getGraphicsResetStatus = try loadCommand(l, "glGetGraphicsResetStatus", glGetGraphicsResetStatusFn);
  self.readnPixels = try loadCommand(l, "glReadnPixels", glReadnPixelsFn);
  self.getnUniformfv = try loadCommand(l, "glGetnUniformfv", glGetnUniformfvFn);
  self.getnUniformiv = try loadCommand(l, "glGetnUniformiv", glGetnUniformivFn);
  self.getnUniformuiv = try loadCommand(l, "glGetnUniformuiv", glGetnUniformuivFn);
  self.minSampleShading = try loadCommand(l, "glMinSampleShading", glMinSampleShadingFn);
  self.patchParameteri = try loadCommand(l, "glPatchParameteri", glPatchParameteriFn);
  self.texParameterIiv = try loadCommand(l, "glTexParameterIiv", glTexParameterIivFn);
  self.texParameterIuiv = try loadCommand(l, "glTexParameterIuiv", glTexParameterIuivFn);
  self.getTexParameterIiv = try loadCommand(l, "glGetTexParameterIiv", glGetTexParameterIivFn);
  self.getTexParameterIuiv = try loadCommand(l, "glGetTexParameterIuiv", glGetTexParameterIuivFn);
  self.samplerParameterIiv = try loadCommand(l, "glSamplerParameterIiv", glSamplerParameterIivFn);
  self.samplerParameterIuiv = try loadCommand(l, "glSamplerParameterIuiv", glSamplerParameterIuivFn);
  self.getSamplerParameterIiv = try loadCommand(l, "glGetSamplerParameterIiv", glGetSamplerParameterIivFn);
  self.getSamplerParameterIuiv = try loadCommand(l, "glGetSamplerParameterIuiv", glGetSamplerParameterIuivFn);
  self.texBuffer = try loadCommand(l, "glTexBuffer", glTexBufferFn);
  self.texBufferRange = try loadCommand(l, "glTexBufferRange", glTexBufferRangeFn);
  self.texStorage3DMultisample = try loadCommand(l, "glTexStorage3DMultisample", glTexStorage3DMultisampleFn);

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



pub const DEPTH_BUFFER_BIT: u32 = 0x00000100;
pub const STENCIL_BUFFER_BIT: u32 = 0x00000400;
pub const COLOR_BUFFER_BIT: u32 = 0x00004000;
pub const FALSE: u32 = 0;
pub const TRUE: u32 = 1;
pub const POINTS: u32 = 0x0000;
pub const LINES: u32 = 0x0001;
pub const LINE_LOOP: u32 = 0x0002;
pub const LINE_STRIP: u32 = 0x0003;
pub const TRIANGLES: u32 = 0x0004;
pub const TRIANGLE_STRIP: u32 = 0x0005;
pub const TRIANGLE_FAN: u32 = 0x0006;
pub const ZERO: u32 = 0;
pub const ONE: u32 = 1;
pub const SRC_COLOR: u32 = 0x0300;
pub const ONE_MINUS_SRC_COLOR: u32 = 0x0301;
pub const SRC_ALPHA: u32 = 0x0302;
pub const ONE_MINUS_SRC_ALPHA: u32 = 0x0303;
pub const DST_ALPHA: u32 = 0x0304;
pub const ONE_MINUS_DST_ALPHA: u32 = 0x0305;
pub const DST_COLOR: u32 = 0x0306;
pub const ONE_MINUS_DST_COLOR: u32 = 0x0307;
pub const SRC_ALPHA_SATURATE: u32 = 0x0308;
pub const FUNC_ADD: u32 = 0x8006;
pub const BLEND_EQUATION: u32 = 0x8009;
pub const BLEND_EQUATION_RGB: u32 = 0x8009;
pub const BLEND_EQUATION_ALPHA: u32 = 0x883D;
pub const FUNC_SUBTRACT: u32 = 0x800A;
pub const FUNC_REVERSE_SUBTRACT: u32 = 0x800B;
pub const BLEND_DST_RGB: u32 = 0x80C8;
pub const BLEND_SRC_RGB: u32 = 0x80C9;
pub const BLEND_DST_ALPHA: u32 = 0x80CA;
pub const BLEND_SRC_ALPHA: u32 = 0x80CB;
pub const CONSTANT_COLOR: u32 = 0x8001;
pub const ONE_MINUS_CONSTANT_COLOR: u32 = 0x8002;
pub const CONSTANT_ALPHA: u32 = 0x8003;
pub const ONE_MINUS_CONSTANT_ALPHA: u32 = 0x8004;
pub const BLEND_COLOR: u32 = 0x8005;
pub const ARRAY_BUFFER: u32 = 0x8892;
pub const ELEMENT_ARRAY_BUFFER: u32 = 0x8893;
pub const ARRAY_BUFFER_BINDING: u32 = 0x8894;
pub const ELEMENT_ARRAY_BUFFER_BINDING: u32 = 0x8895;
pub const STREAM_DRAW: u32 = 0x88E0;
pub const STATIC_DRAW: u32 = 0x88E4;
pub const DYNAMIC_DRAW: u32 = 0x88E8;
pub const BUFFER_SIZE: u32 = 0x8764;
pub const BUFFER_USAGE: u32 = 0x8765;
pub const CURRENT_VERTEX_ATTRIB: u32 = 0x8626;
pub const FRONT: u32 = 0x0404;
pub const BACK: u32 = 0x0405;
pub const FRONT_AND_BACK: u32 = 0x0408;
pub const TEXTURE_2D: u32 = 0x0DE1;
pub const CULL_FACE: u32 = 0x0B44;
pub const BLEND: u32 = 0x0BE2;
pub const DITHER: u32 = 0x0BD0;
pub const STENCIL_TEST: u32 = 0x0B90;
pub const DEPTH_TEST: u32 = 0x0B71;
pub const SCISSOR_TEST: u32 = 0x0C11;
pub const POLYGON_OFFSET_FILL: u32 = 0x8037;
pub const SAMPLE_ALPHA_TO_COVERAGE: u32 = 0x809E;
pub const SAMPLE_COVERAGE: u32 = 0x80A0;
pub const NO_ERROR: u32 = 0;
pub const INVALID_ENUM: u32 = 0x0500;
pub const INVALID_VALUE: u32 = 0x0501;
pub const INVALID_OPERATION: u32 = 0x0502;
pub const OUT_OF_MEMORY: u32 = 0x0505;
pub const CW: u32 = 0x0900;
pub const CCW: u32 = 0x0901;
pub const LINE_WIDTH: u32 = 0x0B21;
pub const ALIASED_POINT_SIZE_RANGE: u32 = 0x846D;
pub const ALIASED_LINE_WIDTH_RANGE: u32 = 0x846E;
pub const CULL_FACE_MODE: u32 = 0x0B45;
pub const FRONT_FACE: u32 = 0x0B46;
pub const DEPTH_RANGE: u32 = 0x0B70;
pub const DEPTH_WRITEMASK: u32 = 0x0B72;
pub const DEPTH_CLEAR_VALUE: u32 = 0x0B73;
pub const DEPTH_FUNC: u32 = 0x0B74;
pub const STENCIL_CLEAR_VALUE: u32 = 0x0B91;
pub const STENCIL_FUNC: u32 = 0x0B92;
pub const STENCIL_FAIL: u32 = 0x0B94;
pub const STENCIL_PASS_DEPTH_FAIL: u32 = 0x0B95;
pub const STENCIL_PASS_DEPTH_PASS: u32 = 0x0B96;
pub const STENCIL_REF: u32 = 0x0B97;
pub const STENCIL_VALUE_MASK: u32 = 0x0B93;
pub const STENCIL_WRITEMASK: u32 = 0x0B98;
pub const STENCIL_BACK_FUNC: u32 = 0x8800;
pub const STENCIL_BACK_FAIL: u32 = 0x8801;
pub const STENCIL_BACK_PASS_DEPTH_FAIL: u32 = 0x8802;
pub const STENCIL_BACK_PASS_DEPTH_PASS: u32 = 0x8803;
pub const STENCIL_BACK_REF: u32 = 0x8CA3;
pub const STENCIL_BACK_VALUE_MASK: u32 = 0x8CA4;
pub const STENCIL_BACK_WRITEMASK: u32 = 0x8CA5;
pub const VIEWPORT: u32 = 0x0BA2;
pub const SCISSOR_BOX: u32 = 0x0C10;
pub const COLOR_CLEAR_VALUE: u32 = 0x0C22;
pub const COLOR_WRITEMASK: u32 = 0x0C23;
pub const UNPACK_ALIGNMENT: u32 = 0x0CF5;
pub const PACK_ALIGNMENT: u32 = 0x0D05;
pub const MAX_TEXTURE_SIZE: u32 = 0x0D33;
pub const MAX_VIEWPORT_DIMS: u32 = 0x0D3A;
pub const SUBPIXEL_BITS: u32 = 0x0D50;
pub const RED_BITS: u32 = 0x0D52;
pub const GREEN_BITS: u32 = 0x0D53;
pub const BLUE_BITS: u32 = 0x0D54;
pub const ALPHA_BITS: u32 = 0x0D55;
pub const DEPTH_BITS: u32 = 0x0D56;
pub const STENCIL_BITS: u32 = 0x0D57;
pub const POLYGON_OFFSET_UNITS: u32 = 0x2A00;
pub const POLYGON_OFFSET_FACTOR: u32 = 0x8038;
pub const TEXTURE_BINDING_2D: u32 = 0x8069;
pub const SAMPLE_BUFFERS: u32 = 0x80A8;
pub const SAMPLES: u32 = 0x80A9;
pub const SAMPLE_COVERAGE_VALUE: u32 = 0x80AA;
pub const SAMPLE_COVERAGE_INVERT: u32 = 0x80AB;
pub const NUM_COMPRESSED_TEXTURE_FORMATS: u32 = 0x86A2;
pub const COMPRESSED_TEXTURE_FORMATS: u32 = 0x86A3;
pub const DONT_CARE: u32 = 0x1100;
pub const FASTEST: u32 = 0x1101;
pub const NICEST: u32 = 0x1102;
pub const GENERATE_MIPMAP_HINT: u32 = 0x8192;
pub const BYTE: u32 = 0x1400;
pub const UNSIGNED_BYTE: u32 = 0x1401;
pub const SHORT: u32 = 0x1402;
pub const UNSIGNED_SHORT: u32 = 0x1403;
pub const INT: u32 = 0x1404;
pub const UNSIGNED_INT: u32 = 0x1405;
pub const FLOAT: u32 = 0x1406;
pub const FIXED: u32 = 0x140C;
pub const DEPTH_COMPONENT: u32 = 0x1902;
pub const ALPHA: u32 = 0x1906;
pub const RGB: u32 = 0x1907;
pub const RGBA: u32 = 0x1908;
pub const LUMINANCE: u32 = 0x1909;
pub const LUMINANCE_ALPHA: u32 = 0x190A;
pub const UNSIGNED_SHORT_4_4_4_4: u32 = 0x8033;
pub const UNSIGNED_SHORT_5_5_5_1: u32 = 0x8034;
pub const UNSIGNED_SHORT_5_6_5: u32 = 0x8363;
pub const FRAGMENT_SHADER: u32 = 0x8B30;
pub const VERTEX_SHADER: u32 = 0x8B31;
pub const MAX_VERTEX_ATTRIBS: u32 = 0x8869;
pub const MAX_VERTEX_UNIFORM_VECTORS: u32 = 0x8DFB;
pub const MAX_VARYING_VECTORS: u32 = 0x8DFC;
pub const MAX_COMBINED_TEXTURE_IMAGE_UNITS: u32 = 0x8B4D;
pub const MAX_VERTEX_TEXTURE_IMAGE_UNITS: u32 = 0x8B4C;
pub const MAX_TEXTURE_IMAGE_UNITS: u32 = 0x8872;
pub const MAX_FRAGMENT_UNIFORM_VECTORS: u32 = 0x8DFD;
pub const SHADER_TYPE: u32 = 0x8B4F;
pub const DELETE_STATUS: u32 = 0x8B80;
pub const LINK_STATUS: u32 = 0x8B82;
pub const VALIDATE_STATUS: u32 = 0x8B83;
pub const ATTACHED_SHADERS: u32 = 0x8B85;
pub const ACTIVE_UNIFORMS: u32 = 0x8B86;
pub const ACTIVE_UNIFORM_MAX_LENGTH: u32 = 0x8B87;
pub const ACTIVE_ATTRIBUTES: u32 = 0x8B89;
pub const ACTIVE_ATTRIBUTE_MAX_LENGTH: u32 = 0x8B8A;
pub const SHADING_LANGUAGE_VERSION: u32 = 0x8B8C;
pub const CURRENT_PROGRAM: u32 = 0x8B8D;
pub const NEVER: u32 = 0x0200;
pub const LESS: u32 = 0x0201;
pub const EQUAL: u32 = 0x0202;
pub const LEQUAL: u32 = 0x0203;
pub const GREATER: u32 = 0x0204;
pub const NOTEQUAL: u32 = 0x0205;
pub const GEQUAL: u32 = 0x0206;
pub const ALWAYS: u32 = 0x0207;
pub const KEEP: u32 = 0x1E00;
pub const REPLACE: u32 = 0x1E01;
pub const INCR: u32 = 0x1E02;
pub const DECR: u32 = 0x1E03;
pub const INVERT: u32 = 0x150A;
pub const INCR_WRAP: u32 = 0x8507;
pub const DECR_WRAP: u32 = 0x8508;
pub const VENDOR: u32 = 0x1F00;
pub const RENDERER: u32 = 0x1F01;
pub const VERSION: u32 = 0x1F02;
pub const EXTENSIONS: u32 = 0x1F03;
pub const NEAREST: u32 = 0x2600;
pub const LINEAR: u32 = 0x2601;
pub const NEAREST_MIPMAP_NEAREST: u32 = 0x2700;
pub const LINEAR_MIPMAP_NEAREST: u32 = 0x2701;
pub const NEAREST_MIPMAP_LINEAR: u32 = 0x2702;
pub const LINEAR_MIPMAP_LINEAR: u32 = 0x2703;
pub const TEXTURE_MAG_FILTER: u32 = 0x2800;
pub const TEXTURE_MIN_FILTER: u32 = 0x2801;
pub const TEXTURE_WRAP_S: u32 = 0x2802;
pub const TEXTURE_WRAP_T: u32 = 0x2803;
pub const TEXTURE: u32 = 0x1702;
pub const TEXTURE_CUBE_MAP: u32 = 0x8513;
pub const TEXTURE_BINDING_CUBE_MAP: u32 = 0x8514;
pub const TEXTURE_CUBE_MAP_POSITIVE_X: u32 = 0x8515;
pub const TEXTURE_CUBE_MAP_NEGATIVE_X: u32 = 0x8516;
pub const TEXTURE_CUBE_MAP_POSITIVE_Y: u32 = 0x8517;
pub const TEXTURE_CUBE_MAP_NEGATIVE_Y: u32 = 0x8518;
pub const TEXTURE_CUBE_MAP_POSITIVE_Z: u32 = 0x8519;
pub const TEXTURE_CUBE_MAP_NEGATIVE_Z: u32 = 0x851A;
pub const MAX_CUBE_MAP_TEXTURE_SIZE: u32 = 0x851C;
pub const TEXTURE0: u32 = 0x84C0;
pub const TEXTURE1: u32 = 0x84C1;
pub const TEXTURE2: u32 = 0x84C2;
pub const TEXTURE3: u32 = 0x84C3;
pub const TEXTURE4: u32 = 0x84C4;
pub const TEXTURE5: u32 = 0x84C5;
pub const TEXTURE6: u32 = 0x84C6;
pub const TEXTURE7: u32 = 0x84C7;
pub const TEXTURE8: u32 = 0x84C8;
pub const TEXTURE9: u32 = 0x84C9;
pub const TEXTURE10: u32 = 0x84CA;
pub const TEXTURE11: u32 = 0x84CB;
pub const TEXTURE12: u32 = 0x84CC;
pub const TEXTURE13: u32 = 0x84CD;
pub const TEXTURE14: u32 = 0x84CE;
pub const TEXTURE15: u32 = 0x84CF;
pub const TEXTURE16: u32 = 0x84D0;
pub const TEXTURE17: u32 = 0x84D1;
pub const TEXTURE18: u32 = 0x84D2;
pub const TEXTURE19: u32 = 0x84D3;
pub const TEXTURE20: u32 = 0x84D4;
pub const TEXTURE21: u32 = 0x84D5;
pub const TEXTURE22: u32 = 0x84D6;
pub const TEXTURE23: u32 = 0x84D7;
pub const TEXTURE24: u32 = 0x84D8;
pub const TEXTURE25: u32 = 0x84D9;
pub const TEXTURE26: u32 = 0x84DA;
pub const TEXTURE27: u32 = 0x84DB;
pub const TEXTURE28: u32 = 0x84DC;
pub const TEXTURE29: u32 = 0x84DD;
pub const TEXTURE30: u32 = 0x84DE;
pub const TEXTURE31: u32 = 0x84DF;
pub const ACTIVE_TEXTURE: u32 = 0x84E0;
pub const REPEAT: u32 = 0x2901;
pub const CLAMP_TO_EDGE: u32 = 0x812F;
pub const MIRRORED_REPEAT: u32 = 0x8370;
pub const FLOAT_VEC2: u32 = 0x8B50;
pub const FLOAT_VEC3: u32 = 0x8B51;
pub const FLOAT_VEC4: u32 = 0x8B52;
pub const INT_VEC2: u32 = 0x8B53;
pub const INT_VEC3: u32 = 0x8B54;
pub const INT_VEC4: u32 = 0x8B55;
pub const BOOL: u32 = 0x8B56;
pub const BOOL_VEC2: u32 = 0x8B57;
pub const BOOL_VEC3: u32 = 0x8B58;
pub const BOOL_VEC4: u32 = 0x8B59;
pub const FLOAT_MAT2: u32 = 0x8B5A;
pub const FLOAT_MAT3: u32 = 0x8B5B;
pub const FLOAT_MAT4: u32 = 0x8B5C;
pub const SAMPLER_2D: u32 = 0x8B5E;
pub const SAMPLER_CUBE: u32 = 0x8B60;
pub const VERTEX_ATTRIB_ARRAY_ENABLED: u32 = 0x8622;
pub const VERTEX_ATTRIB_ARRAY_SIZE: u32 = 0x8623;
pub const VERTEX_ATTRIB_ARRAY_STRIDE: u32 = 0x8624;
pub const VERTEX_ATTRIB_ARRAY_TYPE: u32 = 0x8625;
pub const VERTEX_ATTRIB_ARRAY_NORMALIZED: u32 = 0x886A;
pub const VERTEX_ATTRIB_ARRAY_POINTER: u32 = 0x8645;
pub const VERTEX_ATTRIB_ARRAY_BUFFER_BINDING: u32 = 0x889F;
pub const IMPLEMENTATION_COLOR_READ_TYPE: u32 = 0x8B9A;
pub const IMPLEMENTATION_COLOR_READ_FORMAT: u32 = 0x8B9B;
pub const COMPILE_STATUS: u32 = 0x8B81;
pub const INFO_LOG_LENGTH: u32 = 0x8B84;
pub const SHADER_SOURCE_LENGTH: u32 = 0x8B88;
pub const SHADER_COMPILER: u32 = 0x8DFA;
pub const SHADER_BINARY_FORMATS: u32 = 0x8DF8;
pub const NUM_SHADER_BINARY_FORMATS: u32 = 0x8DF9;
pub const LOW_FLOAT: u32 = 0x8DF0;
pub const MEDIUM_FLOAT: u32 = 0x8DF1;
pub const HIGH_FLOAT: u32 = 0x8DF2;
pub const LOW_INT: u32 = 0x8DF3;
pub const MEDIUM_INT: u32 = 0x8DF4;
pub const HIGH_INT: u32 = 0x8DF5;
pub const FRAMEBUFFER: u32 = 0x8D40;
pub const RENDERBUFFER: u32 = 0x8D41;
pub const RGBA4: u32 = 0x8056;
pub const RGB5_A1: u32 = 0x8057;
pub const RGB565: u32 = 0x8D62;
pub const DEPTH_COMPONENT16: u32 = 0x81A5;
pub const STENCIL_INDEX8: u32 = 0x8D48;
pub const RENDERBUFFER_WIDTH: u32 = 0x8D42;
pub const RENDERBUFFER_HEIGHT: u32 = 0x8D43;
pub const RENDERBUFFER_INTERNAL_FORMAT: u32 = 0x8D44;
pub const RENDERBUFFER_RED_SIZE: u32 = 0x8D50;
pub const RENDERBUFFER_GREEN_SIZE: u32 = 0x8D51;
pub const RENDERBUFFER_BLUE_SIZE: u32 = 0x8D52;
pub const RENDERBUFFER_ALPHA_SIZE: u32 = 0x8D53;
pub const RENDERBUFFER_DEPTH_SIZE: u32 = 0x8D54;
pub const RENDERBUFFER_STENCIL_SIZE: u32 = 0x8D55;
pub const FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE: u32 = 0x8CD0;
pub const FRAMEBUFFER_ATTACHMENT_OBJECT_NAME: u32 = 0x8CD1;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL: u32 = 0x8CD2;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE: u32 = 0x8CD3;
pub const COLOR_ATTACHMENT0: u32 = 0x8CE0;
pub const DEPTH_ATTACHMENT: u32 = 0x8D00;
pub const STENCIL_ATTACHMENT: u32 = 0x8D20;
pub const NONE: u32 = 0;
pub const FRAMEBUFFER_COMPLETE: u32 = 0x8CD5;
pub const FRAMEBUFFER_INCOMPLETE_ATTACHMENT: u32 = 0x8CD6;
pub const FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT: u32 = 0x8CD7;
pub const FRAMEBUFFER_INCOMPLETE_DIMENSIONS: u32 = 0x8CD9;
pub const FRAMEBUFFER_UNSUPPORTED: u32 = 0x8CDD;
pub const FRAMEBUFFER_BINDING: u32 = 0x8CA6;
pub const RENDERBUFFER_BINDING: u32 = 0x8CA7;
pub const MAX_RENDERBUFFER_SIZE: u32 = 0x84E8;
pub const INVALID_FRAMEBUFFER_OPERATION: u32 = 0x0506;
pub const READ_BUFFER: u32 = 0x0C02;
pub const UNPACK_ROW_LENGTH: u32 = 0x0CF2;
pub const UNPACK_SKIP_ROWS: u32 = 0x0CF3;
pub const UNPACK_SKIP_PIXELS: u32 = 0x0CF4;
pub const PACK_ROW_LENGTH: u32 = 0x0D02;
pub const PACK_SKIP_ROWS: u32 = 0x0D03;
pub const PACK_SKIP_PIXELS: u32 = 0x0D04;
pub const COLOR: u32 = 0x1800;
pub const DEPTH: u32 = 0x1801;
pub const STENCIL: u32 = 0x1802;
pub const RED: u32 = 0x1903;
pub const RGB8: u32 = 0x8051;
pub const RGBA8: u32 = 0x8058;
pub const RGB10_A2: u32 = 0x8059;
pub const TEXTURE_BINDING_3D: u32 = 0x806A;
pub const UNPACK_SKIP_IMAGES: u32 = 0x806D;
pub const UNPACK_IMAGE_HEIGHT: u32 = 0x806E;
pub const TEXTURE_3D: u32 = 0x806F;
pub const TEXTURE_WRAP_R: u32 = 0x8072;
pub const MAX_3D_TEXTURE_SIZE: u32 = 0x8073;
pub const UNSIGNED_INT_2_10_10_10_REV: u32 = 0x8368;
pub const MAX_ELEMENTS_VERTICES: u32 = 0x80E8;
pub const MAX_ELEMENTS_INDICES: u32 = 0x80E9;
pub const TEXTURE_MIN_LOD: u32 = 0x813A;
pub const TEXTURE_MAX_LOD: u32 = 0x813B;
pub const TEXTURE_BASE_LEVEL: u32 = 0x813C;
pub const TEXTURE_MAX_LEVEL: u32 = 0x813D;
pub const MIN: u32 = 0x8007;
pub const MAX: u32 = 0x8008;
pub const DEPTH_COMPONENT24: u32 = 0x81A6;
pub const MAX_TEXTURE_LOD_BIAS: u32 = 0x84FD;
pub const TEXTURE_COMPARE_MODE: u32 = 0x884C;
pub const TEXTURE_COMPARE_FUNC: u32 = 0x884D;
pub const CURRENT_QUERY: u32 = 0x8865;
pub const QUERY_RESULT: u32 = 0x8866;
pub const QUERY_RESULT_AVAILABLE: u32 = 0x8867;
pub const BUFFER_MAPPED: u32 = 0x88BC;
pub const BUFFER_MAP_POINTER: u32 = 0x88BD;
pub const STREAM_READ: u32 = 0x88E1;
pub const STREAM_COPY: u32 = 0x88E2;
pub const STATIC_READ: u32 = 0x88E5;
pub const STATIC_COPY: u32 = 0x88E6;
pub const DYNAMIC_READ: u32 = 0x88E9;
pub const DYNAMIC_COPY: u32 = 0x88EA;
pub const MAX_DRAW_BUFFERS: u32 = 0x8824;
pub const DRAW_BUFFER0: u32 = 0x8825;
pub const DRAW_BUFFER1: u32 = 0x8826;
pub const DRAW_BUFFER2: u32 = 0x8827;
pub const DRAW_BUFFER3: u32 = 0x8828;
pub const DRAW_BUFFER4: u32 = 0x8829;
pub const DRAW_BUFFER5: u32 = 0x882A;
pub const DRAW_BUFFER6: u32 = 0x882B;
pub const DRAW_BUFFER7: u32 = 0x882C;
pub const DRAW_BUFFER8: u32 = 0x882D;
pub const DRAW_BUFFER9: u32 = 0x882E;
pub const DRAW_BUFFER10: u32 = 0x882F;
pub const DRAW_BUFFER11: u32 = 0x8830;
pub const DRAW_BUFFER12: u32 = 0x8831;
pub const DRAW_BUFFER13: u32 = 0x8832;
pub const DRAW_BUFFER14: u32 = 0x8833;
pub const DRAW_BUFFER15: u32 = 0x8834;
pub const MAX_FRAGMENT_UNIFORM_COMPONENTS: u32 = 0x8B49;
pub const MAX_VERTEX_UNIFORM_COMPONENTS: u32 = 0x8B4A;
pub const SAMPLER_3D: u32 = 0x8B5F;
pub const SAMPLER_2D_SHADOW: u32 = 0x8B62;
pub const FRAGMENT_SHADER_DERIVATIVE_HINT: u32 = 0x8B8B;
pub const PIXEL_PACK_BUFFER: u32 = 0x88EB;
pub const PIXEL_UNPACK_BUFFER: u32 = 0x88EC;
pub const PIXEL_PACK_BUFFER_BINDING: u32 = 0x88ED;
pub const PIXEL_UNPACK_BUFFER_BINDING: u32 = 0x88EF;
pub const FLOAT_MAT2x3: u32 = 0x8B65;
pub const FLOAT_MAT2x4: u32 = 0x8B66;
pub const FLOAT_MAT3x2: u32 = 0x8B67;
pub const FLOAT_MAT3x4: u32 = 0x8B68;
pub const FLOAT_MAT4x2: u32 = 0x8B69;
pub const FLOAT_MAT4x3: u32 = 0x8B6A;
pub const SRGB: u32 = 0x8C40;
pub const SRGB8: u32 = 0x8C41;
pub const SRGB8_ALPHA8: u32 = 0x8C43;
pub const COMPARE_REF_TO_TEXTURE: u32 = 0x884E;
pub const MAJOR_VERSION: u32 = 0x821B;
pub const MINOR_VERSION: u32 = 0x821C;
pub const NUM_EXTENSIONS: u32 = 0x821D;
pub const RGBA32F: u32 = 0x8814;
pub const RGB32F: u32 = 0x8815;
pub const RGBA16F: u32 = 0x881A;
pub const RGB16F: u32 = 0x881B;
pub const VERTEX_ATTRIB_ARRAY_INTEGER: u32 = 0x88FD;
pub const MAX_ARRAY_TEXTURE_LAYERS: u32 = 0x88FF;
pub const MIN_PROGRAM_TEXEL_OFFSET: u32 = 0x8904;
pub const MAX_PROGRAM_TEXEL_OFFSET: u32 = 0x8905;
pub const MAX_VARYING_COMPONENTS: u32 = 0x8B4B;
pub const TEXTURE_2D_ARRAY: u32 = 0x8C1A;
pub const TEXTURE_BINDING_2D_ARRAY: u32 = 0x8C1D;
pub const R11F_G11F_B10F: u32 = 0x8C3A;
pub const UNSIGNED_INT_10F_11F_11F_REV: u32 = 0x8C3B;
pub const RGB9_E5: u32 = 0x8C3D;
pub const UNSIGNED_INT_5_9_9_9_REV: u32 = 0x8C3E;
pub const TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH: u32 = 0x8C76;
pub const TRANSFORM_FEEDBACK_BUFFER_MODE: u32 = 0x8C7F;
pub const MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS: u32 = 0x8C80;
pub const TRANSFORM_FEEDBACK_VARYINGS: u32 = 0x8C83;
pub const TRANSFORM_FEEDBACK_BUFFER_START: u32 = 0x8C84;
pub const TRANSFORM_FEEDBACK_BUFFER_SIZE: u32 = 0x8C85;
pub const TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN: u32 = 0x8C88;
pub const RASTERIZER_DISCARD: u32 = 0x8C89;
pub const MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS: u32 = 0x8C8A;
pub const MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS: u32 = 0x8C8B;
pub const INTERLEAVED_ATTRIBS: u32 = 0x8C8C;
pub const SEPARATE_ATTRIBS: u32 = 0x8C8D;
pub const TRANSFORM_FEEDBACK_BUFFER: u32 = 0x8C8E;
pub const TRANSFORM_FEEDBACK_BUFFER_BINDING: u32 = 0x8C8F;
pub const RGBA32UI: u32 = 0x8D70;
pub const RGB32UI: u32 = 0x8D71;
pub const RGBA16UI: u32 = 0x8D76;
pub const RGB16UI: u32 = 0x8D77;
pub const RGBA8UI: u32 = 0x8D7C;
pub const RGB8UI: u32 = 0x8D7D;
pub const RGBA32I: u32 = 0x8D82;
pub const RGB32I: u32 = 0x8D83;
pub const RGBA16I: u32 = 0x8D88;
pub const RGB16I: u32 = 0x8D89;
pub const RGBA8I: u32 = 0x8D8E;
pub const RGB8I: u32 = 0x8D8F;
pub const RED_INTEGER: u32 = 0x8D94;
pub const RGB_INTEGER: u32 = 0x8D98;
pub const RGBA_INTEGER: u32 = 0x8D99;
pub const SAMPLER_2D_ARRAY: u32 = 0x8DC1;
pub const SAMPLER_2D_ARRAY_SHADOW: u32 = 0x8DC4;
pub const SAMPLER_CUBE_SHADOW: u32 = 0x8DC5;
pub const UNSIGNED_INT_VEC2: u32 = 0x8DC6;
pub const UNSIGNED_INT_VEC3: u32 = 0x8DC7;
pub const UNSIGNED_INT_VEC4: u32 = 0x8DC8;
pub const INT_SAMPLER_2D: u32 = 0x8DCA;
pub const INT_SAMPLER_3D: u32 = 0x8DCB;
pub const INT_SAMPLER_CUBE: u32 = 0x8DCC;
pub const INT_SAMPLER_2D_ARRAY: u32 = 0x8DCF;
pub const UNSIGNED_INT_SAMPLER_2D: u32 = 0x8DD2;
pub const UNSIGNED_INT_SAMPLER_3D: u32 = 0x8DD3;
pub const UNSIGNED_INT_SAMPLER_CUBE: u32 = 0x8DD4;
pub const UNSIGNED_INT_SAMPLER_2D_ARRAY: u32 = 0x8DD7;
pub const BUFFER_ACCESS_FLAGS: u32 = 0x911F;
pub const BUFFER_MAP_LENGTH: u32 = 0x9120;
pub const BUFFER_MAP_OFFSET: u32 = 0x9121;
pub const DEPTH_COMPONENT32F: u32 = 0x8CAC;
pub const DEPTH32F_STENCIL8: u32 = 0x8CAD;
pub const FLOAT_32_UNSIGNED_INT_24_8_REV: u32 = 0x8DAD;
pub const FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING: u32 = 0x8210;
pub const FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE: u32 = 0x8211;
pub const FRAMEBUFFER_ATTACHMENT_RED_SIZE: u32 = 0x8212;
pub const FRAMEBUFFER_ATTACHMENT_GREEN_SIZE: u32 = 0x8213;
pub const FRAMEBUFFER_ATTACHMENT_BLUE_SIZE: u32 = 0x8214;
pub const FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE: u32 = 0x8215;
pub const FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE: u32 = 0x8216;
pub const FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE: u32 = 0x8217;
pub const FRAMEBUFFER_DEFAULT: u32 = 0x8218;
pub const FRAMEBUFFER_UNDEFINED: u32 = 0x8219;
pub const DEPTH_STENCIL_ATTACHMENT: u32 = 0x821A;
pub const DEPTH_STENCIL: u32 = 0x84F9;
pub const UNSIGNED_INT_24_8: u32 = 0x84FA;
pub const DEPTH24_STENCIL8: u32 = 0x88F0;
pub const UNSIGNED_NORMALIZED: u32 = 0x8C17;
pub const DRAW_FRAMEBUFFER_BINDING: u32 = 0x8CA6;
pub const READ_FRAMEBUFFER: u32 = 0x8CA8;
pub const DRAW_FRAMEBUFFER: u32 = 0x8CA9;
pub const READ_FRAMEBUFFER_BINDING: u32 = 0x8CAA;
pub const RENDERBUFFER_SAMPLES: u32 = 0x8CAB;
pub const FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER: u32 = 0x8CD4;
pub const MAX_COLOR_ATTACHMENTS: u32 = 0x8CDF;
pub const COLOR_ATTACHMENT1: u32 = 0x8CE1;
pub const COLOR_ATTACHMENT2: u32 = 0x8CE2;
pub const COLOR_ATTACHMENT3: u32 = 0x8CE3;
pub const COLOR_ATTACHMENT4: u32 = 0x8CE4;
pub const COLOR_ATTACHMENT5: u32 = 0x8CE5;
pub const COLOR_ATTACHMENT6: u32 = 0x8CE6;
pub const COLOR_ATTACHMENT7: u32 = 0x8CE7;
pub const COLOR_ATTACHMENT8: u32 = 0x8CE8;
pub const COLOR_ATTACHMENT9: u32 = 0x8CE9;
pub const COLOR_ATTACHMENT10: u32 = 0x8CEA;
pub const COLOR_ATTACHMENT11: u32 = 0x8CEB;
pub const COLOR_ATTACHMENT12: u32 = 0x8CEC;
pub const COLOR_ATTACHMENT13: u32 = 0x8CED;
pub const COLOR_ATTACHMENT14: u32 = 0x8CEE;
pub const COLOR_ATTACHMENT15: u32 = 0x8CEF;
pub const COLOR_ATTACHMENT16: u32 = 0x8CF0;
pub const COLOR_ATTACHMENT17: u32 = 0x8CF1;
pub const COLOR_ATTACHMENT18: u32 = 0x8CF2;
pub const COLOR_ATTACHMENT19: u32 = 0x8CF3;
pub const COLOR_ATTACHMENT20: u32 = 0x8CF4;
pub const COLOR_ATTACHMENT21: u32 = 0x8CF5;
pub const COLOR_ATTACHMENT22: u32 = 0x8CF6;
pub const COLOR_ATTACHMENT23: u32 = 0x8CF7;
pub const COLOR_ATTACHMENT24: u32 = 0x8CF8;
pub const COLOR_ATTACHMENT25: u32 = 0x8CF9;
pub const COLOR_ATTACHMENT26: u32 = 0x8CFA;
pub const COLOR_ATTACHMENT27: u32 = 0x8CFB;
pub const COLOR_ATTACHMENT28: u32 = 0x8CFC;
pub const COLOR_ATTACHMENT29: u32 = 0x8CFD;
pub const COLOR_ATTACHMENT30: u32 = 0x8CFE;
pub const COLOR_ATTACHMENT31: u32 = 0x8CFF;
pub const FRAMEBUFFER_INCOMPLETE_MULTISAMPLE: u32 = 0x8D56;
pub const MAX_SAMPLES: u32 = 0x8D57;
pub const HALF_FLOAT: u32 = 0x140B;
pub const MAP_READ_BIT: u32 = 0x0001;
pub const MAP_WRITE_BIT: u32 = 0x0002;
pub const MAP_INVALIDATE_RANGE_BIT: u32 = 0x0004;
pub const MAP_INVALIDATE_BUFFER_BIT: u32 = 0x0008;
pub const MAP_FLUSH_EXPLICIT_BIT: u32 = 0x0010;
pub const MAP_UNSYNCHRONIZED_BIT: u32 = 0x0020;
pub const RG: u32 = 0x8227;
pub const RG_INTEGER: u32 = 0x8228;
pub const R8: u32 = 0x8229;
pub const RG8: u32 = 0x822B;
pub const R16F: u32 = 0x822D;
pub const R32F: u32 = 0x822E;
pub const RG16F: u32 = 0x822F;
pub const RG32F: u32 = 0x8230;
pub const R8I: u32 = 0x8231;
pub const R8UI: u32 = 0x8232;
pub const R16I: u32 = 0x8233;
pub const R16UI: u32 = 0x8234;
pub const R32I: u32 = 0x8235;
pub const R32UI: u32 = 0x8236;
pub const RG8I: u32 = 0x8237;
pub const RG8UI: u32 = 0x8238;
pub const RG16I: u32 = 0x8239;
pub const RG16UI: u32 = 0x823A;
pub const RG32I: u32 = 0x823B;
pub const RG32UI: u32 = 0x823C;
pub const VERTEX_ARRAY_BINDING: u32 = 0x85B5;
pub const R8_SNORM: u32 = 0x8F94;
pub const RG8_SNORM: u32 = 0x8F95;
pub const RGB8_SNORM: u32 = 0x8F96;
pub const RGBA8_SNORM: u32 = 0x8F97;
pub const SIGNED_NORMALIZED: u32 = 0x8F9C;
pub const PRIMITIVE_RESTART_FIXED_INDEX: u32 = 0x8D69;
pub const COPY_READ_BUFFER: u32 = 0x8F36;
pub const COPY_WRITE_BUFFER: u32 = 0x8F37;
pub const COPY_READ_BUFFER_BINDING: u32 = 0x8F36;
pub const COPY_WRITE_BUFFER_BINDING: u32 = 0x8F37;
pub const UNIFORM_BUFFER: u32 = 0x8A11;
pub const UNIFORM_BUFFER_BINDING: u32 = 0x8A28;
pub const UNIFORM_BUFFER_START: u32 = 0x8A29;
pub const UNIFORM_BUFFER_SIZE: u32 = 0x8A2A;
pub const MAX_VERTEX_UNIFORM_BLOCKS: u32 = 0x8A2B;
pub const MAX_FRAGMENT_UNIFORM_BLOCKS: u32 = 0x8A2D;
pub const MAX_COMBINED_UNIFORM_BLOCKS: u32 = 0x8A2E;
pub const MAX_UNIFORM_BUFFER_BINDINGS: u32 = 0x8A2F;
pub const MAX_UNIFORM_BLOCK_SIZE: u32 = 0x8A30;
pub const MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS: u32 = 0x8A31;
pub const MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS: u32 = 0x8A33;
pub const UNIFORM_BUFFER_OFFSET_ALIGNMENT: u32 = 0x8A34;
pub const ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH: u32 = 0x8A35;
pub const ACTIVE_UNIFORM_BLOCKS: u32 = 0x8A36;
pub const UNIFORM_TYPE: u32 = 0x8A37;
pub const UNIFORM_SIZE: u32 = 0x8A38;
pub const UNIFORM_NAME_LENGTH: u32 = 0x8A39;
pub const UNIFORM_BLOCK_INDEX: u32 = 0x8A3A;
pub const UNIFORM_OFFSET: u32 = 0x8A3B;
pub const UNIFORM_ARRAY_STRIDE: u32 = 0x8A3C;
pub const UNIFORM_MATRIX_STRIDE: u32 = 0x8A3D;
pub const UNIFORM_IS_ROW_MAJOR: u32 = 0x8A3E;
pub const UNIFORM_BLOCK_BINDING: u32 = 0x8A3F;
pub const UNIFORM_BLOCK_DATA_SIZE: u32 = 0x8A40;
pub const UNIFORM_BLOCK_NAME_LENGTH: u32 = 0x8A41;
pub const UNIFORM_BLOCK_ACTIVE_UNIFORMS: u32 = 0x8A42;
pub const UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES: u32 = 0x8A43;
pub const UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER: u32 = 0x8A44;
pub const UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER: u32 = 0x8A46;
pub const INVALID_INDEX: u32 = 0xFFFFFFFF;
pub const MAX_VERTEX_OUTPUT_COMPONENTS: u32 = 0x9122;
pub const MAX_FRAGMENT_INPUT_COMPONENTS: u32 = 0x9125;
pub const MAX_SERVER_WAIT_TIMEOUT: u32 = 0x9111;
pub const OBJECT_TYPE: u32 = 0x9112;
pub const SYNC_CONDITION: u32 = 0x9113;
pub const SYNC_STATUS: u32 = 0x9114;
pub const SYNC_FLAGS: u32 = 0x9115;
pub const SYNC_FENCE: u32 = 0x9116;
pub const SYNC_GPU_COMMANDS_COMPLETE: u32 = 0x9117;
pub const UNSIGNALED: u32 = 0x9118;
pub const SIGNALED: u32 = 0x9119;
pub const ALREADY_SIGNALED: u32 = 0x911A;
pub const TIMEOUT_EXPIRED: u32 = 0x911B;
pub const CONDITION_SATISFIED: u32 = 0x911C;
pub const WAIT_FAILED: u32 = 0x911D;
pub const SYNC_FLUSH_COMMANDS_BIT: u32 = 0x00000001;
pub const TIMEOUT_IGNORED: u32 = 0xFFFFFFFFFFFFFFFF;
pub const VERTEX_ATTRIB_ARRAY_DIVISOR: u32 = 0x88FE;
pub const ANY_SAMPLES_PASSED: u32 = 0x8C2F;
pub const ANY_SAMPLES_PASSED_CONSERVATIVE: u32 = 0x8D6A;
pub const SAMPLER_BINDING: u32 = 0x8919;
pub const RGB10_A2UI: u32 = 0x906F;
pub const TEXTURE_SWIZZLE_R: u32 = 0x8E42;
pub const TEXTURE_SWIZZLE_G: u32 = 0x8E43;
pub const TEXTURE_SWIZZLE_B: u32 = 0x8E44;
pub const TEXTURE_SWIZZLE_A: u32 = 0x8E45;
pub const GREEN: u32 = 0x1904;
pub const BLUE: u32 = 0x1905;
pub const INT_2_10_10_10_REV: u32 = 0x8D9F;
pub const TRANSFORM_FEEDBACK: u32 = 0x8E22;
pub const TRANSFORM_FEEDBACK_PAUSED: u32 = 0x8E23;
pub const TRANSFORM_FEEDBACK_ACTIVE: u32 = 0x8E24;
pub const TRANSFORM_FEEDBACK_BINDING: u32 = 0x8E25;
pub const PROGRAM_BINARY_RETRIEVABLE_HINT: u32 = 0x8257;
pub const PROGRAM_BINARY_LENGTH: u32 = 0x8741;
pub const NUM_PROGRAM_BINARY_FORMATS: u32 = 0x87FE;
pub const PROGRAM_BINARY_FORMATS: u32 = 0x87FF;
pub const COMPRESSED_R11_EAC: u32 = 0x9270;
pub const COMPRESSED_SIGNED_R11_EAC: u32 = 0x9271;
pub const COMPRESSED_RG11_EAC: u32 = 0x9272;
pub const COMPRESSED_SIGNED_RG11_EAC: u32 = 0x9273;
pub const COMPRESSED_RGB8_ETC2: u32 = 0x9274;
pub const COMPRESSED_SRGB8_ETC2: u32 = 0x9275;
pub const COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2: u32 = 0x9276;
pub const COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2: u32 = 0x9277;
pub const COMPRESSED_RGBA8_ETC2_EAC: u32 = 0x9278;
pub const COMPRESSED_SRGB8_ALPHA8_ETC2_EAC: u32 = 0x9279;
pub const TEXTURE_IMMUTABLE_FORMAT: u32 = 0x912F;
pub const MAX_ELEMENT_INDEX: u32 = 0x8D6B;
pub const NUM_SAMPLE_COUNTS: u32 = 0x9380;
pub const TEXTURE_IMMUTABLE_LEVELS: u32 = 0x82DF;
pub const COMPUTE_SHADER: u32 = 0x91B9;
pub const MAX_COMPUTE_UNIFORM_BLOCKS: u32 = 0x91BB;
pub const MAX_COMPUTE_TEXTURE_IMAGE_UNITS: u32 = 0x91BC;
pub const MAX_COMPUTE_IMAGE_UNIFORMS: u32 = 0x91BD;
pub const MAX_COMPUTE_SHARED_MEMORY_SIZE: u32 = 0x8262;
pub const MAX_COMPUTE_UNIFORM_COMPONENTS: u32 = 0x8263;
pub const MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS: u32 = 0x8264;
pub const MAX_COMPUTE_ATOMIC_COUNTERS: u32 = 0x8265;
pub const MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS: u32 = 0x8266;
pub const MAX_COMPUTE_WORK_GROUP_INVOCATIONS: u32 = 0x90EB;
pub const MAX_COMPUTE_WORK_GROUP_COUNT: u32 = 0x91BE;
pub const MAX_COMPUTE_WORK_GROUP_SIZE: u32 = 0x91BF;
pub const COMPUTE_WORK_GROUP_SIZE: u32 = 0x8267;
pub const DISPATCH_INDIRECT_BUFFER: u32 = 0x90EE;
pub const DISPATCH_INDIRECT_BUFFER_BINDING: u32 = 0x90EF;
pub const COMPUTE_SHADER_BIT: u32 = 0x00000020;
pub const DRAW_INDIRECT_BUFFER: u32 = 0x8F3F;
pub const DRAW_INDIRECT_BUFFER_BINDING: u32 = 0x8F43;
pub const MAX_UNIFORM_LOCATIONS: u32 = 0x826E;
pub const FRAMEBUFFER_DEFAULT_WIDTH: u32 = 0x9310;
pub const FRAMEBUFFER_DEFAULT_HEIGHT: u32 = 0x9311;
pub const FRAMEBUFFER_DEFAULT_SAMPLES: u32 = 0x9313;
pub const FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS: u32 = 0x9314;
pub const MAX_FRAMEBUFFER_WIDTH: u32 = 0x9315;
pub const MAX_FRAMEBUFFER_HEIGHT: u32 = 0x9316;
pub const MAX_FRAMEBUFFER_SAMPLES: u32 = 0x9318;
pub const UNIFORM: u32 = 0x92E1;
pub const UNIFORM_BLOCK: u32 = 0x92E2;
pub const PROGRAM_INPUT: u32 = 0x92E3;
pub const PROGRAM_OUTPUT: u32 = 0x92E4;
pub const BUFFER_VARIABLE: u32 = 0x92E5;
pub const SHADER_STORAGE_BLOCK: u32 = 0x92E6;
pub const ATOMIC_COUNTER_BUFFER: u32 = 0x92C0;
pub const TRANSFORM_FEEDBACK_VARYING: u32 = 0x92F4;
pub const ACTIVE_RESOURCES: u32 = 0x92F5;
pub const MAX_NAME_LENGTH: u32 = 0x92F6;
pub const MAX_NUM_ACTIVE_VARIABLES: u32 = 0x92F7;
pub const NAME_LENGTH: u32 = 0x92F9;
pub const TYPE: u32 = 0x92FA;
pub const ARRAY_SIZE: u32 = 0x92FB;
pub const OFFSET: u32 = 0x92FC;
pub const BLOCK_INDEX: u32 = 0x92FD;
pub const ARRAY_STRIDE: u32 = 0x92FE;
pub const MATRIX_STRIDE: u32 = 0x92FF;
pub const IS_ROW_MAJOR: u32 = 0x9300;
pub const ATOMIC_COUNTER_BUFFER_INDEX: u32 = 0x9301;
pub const BUFFER_BINDING: u32 = 0x9302;
pub const BUFFER_DATA_SIZE: u32 = 0x9303;
pub const NUM_ACTIVE_VARIABLES: u32 = 0x9304;
pub const ACTIVE_VARIABLES: u32 = 0x9305;
pub const REFERENCED_BY_VERTEX_SHADER: u32 = 0x9306;
pub const REFERENCED_BY_FRAGMENT_SHADER: u32 = 0x930A;
pub const REFERENCED_BY_COMPUTE_SHADER: u32 = 0x930B;
pub const TOP_LEVEL_ARRAY_SIZE: u32 = 0x930C;
pub const TOP_LEVEL_ARRAY_STRIDE: u32 = 0x930D;
pub const LOCATION: u32 = 0x930E;
pub const VERTEX_SHADER_BIT: u32 = 0x00000001;
pub const FRAGMENT_SHADER_BIT: u32 = 0x00000002;
pub const ALL_SHADER_BITS: u32 = 0xFFFFFFFF;
pub const PROGRAM_SEPARABLE: u32 = 0x8258;
pub const ACTIVE_PROGRAM: u32 = 0x8259;
pub const PROGRAM_PIPELINE_BINDING: u32 = 0x825A;
pub const ATOMIC_COUNTER_BUFFER_BINDING: u32 = 0x92C1;
pub const ATOMIC_COUNTER_BUFFER_START: u32 = 0x92C2;
pub const ATOMIC_COUNTER_BUFFER_SIZE: u32 = 0x92C3;
pub const MAX_VERTEX_ATOMIC_COUNTER_BUFFERS: u32 = 0x92CC;
pub const MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS: u32 = 0x92D0;
pub const MAX_COMBINED_ATOMIC_COUNTER_BUFFERS: u32 = 0x92D1;
pub const MAX_VERTEX_ATOMIC_COUNTERS: u32 = 0x92D2;
pub const MAX_FRAGMENT_ATOMIC_COUNTERS: u32 = 0x92D6;
pub const MAX_COMBINED_ATOMIC_COUNTERS: u32 = 0x92D7;
pub const MAX_ATOMIC_COUNTER_BUFFER_SIZE: u32 = 0x92D8;
pub const MAX_ATOMIC_COUNTER_BUFFER_BINDINGS: u32 = 0x92DC;
pub const ACTIVE_ATOMIC_COUNTER_BUFFERS: u32 = 0x92D9;
pub const UNSIGNED_INT_ATOMIC_COUNTER: u32 = 0x92DB;
pub const MAX_IMAGE_UNITS: u32 = 0x8F38;
pub const MAX_VERTEX_IMAGE_UNIFORMS: u32 = 0x90CA;
pub const MAX_FRAGMENT_IMAGE_UNIFORMS: u32 = 0x90CE;
pub const MAX_COMBINED_IMAGE_UNIFORMS: u32 = 0x90CF;
pub const IMAGE_BINDING_NAME: u32 = 0x8F3A;
pub const IMAGE_BINDING_LEVEL: u32 = 0x8F3B;
pub const IMAGE_BINDING_LAYERED: u32 = 0x8F3C;
pub const IMAGE_BINDING_LAYER: u32 = 0x8F3D;
pub const IMAGE_BINDING_ACCESS: u32 = 0x8F3E;
pub const IMAGE_BINDING_FORMAT: u32 = 0x906E;
pub const VERTEX_ATTRIB_ARRAY_BARRIER_BIT: u32 = 0x00000001;
pub const ELEMENT_ARRAY_BARRIER_BIT: u32 = 0x00000002;
pub const UNIFORM_BARRIER_BIT: u32 = 0x00000004;
pub const TEXTURE_FETCH_BARRIER_BIT: u32 = 0x00000008;
pub const SHADER_IMAGE_ACCESS_BARRIER_BIT: u32 = 0x00000020;
pub const COMMAND_BARRIER_BIT: u32 = 0x00000040;
pub const PIXEL_BUFFER_BARRIER_BIT: u32 = 0x00000080;
pub const TEXTURE_UPDATE_BARRIER_BIT: u32 = 0x00000100;
pub const BUFFER_UPDATE_BARRIER_BIT: u32 = 0x00000200;
pub const FRAMEBUFFER_BARRIER_BIT: u32 = 0x00000400;
pub const TRANSFORM_FEEDBACK_BARRIER_BIT: u32 = 0x00000800;
pub const ATOMIC_COUNTER_BARRIER_BIT: u32 = 0x00001000;
pub const ALL_BARRIER_BITS: u32 = 0xFFFFFFFF;
pub const IMAGE_2D: u32 = 0x904D;
pub const IMAGE_3D: u32 = 0x904E;
pub const IMAGE_CUBE: u32 = 0x9050;
pub const IMAGE_2D_ARRAY: u32 = 0x9053;
pub const INT_IMAGE_2D: u32 = 0x9058;
pub const INT_IMAGE_3D: u32 = 0x9059;
pub const INT_IMAGE_CUBE: u32 = 0x905B;
pub const INT_IMAGE_2D_ARRAY: u32 = 0x905E;
pub const UNSIGNED_INT_IMAGE_2D: u32 = 0x9063;
pub const UNSIGNED_INT_IMAGE_3D: u32 = 0x9064;
pub const UNSIGNED_INT_IMAGE_CUBE: u32 = 0x9066;
pub const UNSIGNED_INT_IMAGE_2D_ARRAY: u32 = 0x9069;
pub const IMAGE_FORMAT_COMPATIBILITY_TYPE: u32 = 0x90C7;
pub const IMAGE_FORMAT_COMPATIBILITY_BY_SIZE: u32 = 0x90C8;
pub const IMAGE_FORMAT_COMPATIBILITY_BY_CLASS: u32 = 0x90C9;
pub const READ_ONLY: u32 = 0x88B8;
pub const WRITE_ONLY: u32 = 0x88B9;
pub const READ_WRITE: u32 = 0x88BA;
pub const SHADER_STORAGE_BUFFER: u32 = 0x90D2;
pub const SHADER_STORAGE_BUFFER_BINDING: u32 = 0x90D3;
pub const SHADER_STORAGE_BUFFER_START: u32 = 0x90D4;
pub const SHADER_STORAGE_BUFFER_SIZE: u32 = 0x90D5;
pub const MAX_VERTEX_SHADER_STORAGE_BLOCKS: u32 = 0x90D6;
pub const MAX_FRAGMENT_SHADER_STORAGE_BLOCKS: u32 = 0x90DA;
pub const MAX_COMPUTE_SHADER_STORAGE_BLOCKS: u32 = 0x90DB;
pub const MAX_COMBINED_SHADER_STORAGE_BLOCKS: u32 = 0x90DC;
pub const MAX_SHADER_STORAGE_BUFFER_BINDINGS: u32 = 0x90DD;
pub const MAX_SHADER_STORAGE_BLOCK_SIZE: u32 = 0x90DE;
pub const SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT: u32 = 0x90DF;
pub const SHADER_STORAGE_BARRIER_BIT: u32 = 0x00002000;
pub const MAX_COMBINED_SHADER_OUTPUT_RESOURCES: u32 = 0x8F39;
pub const DEPTH_STENCIL_TEXTURE_MODE: u32 = 0x90EA;
pub const STENCIL_INDEX: u32 = 0x1901;
pub const MIN_PROGRAM_TEXTURE_GATHER_OFFSET: u32 = 0x8E5E;
pub const MAX_PROGRAM_TEXTURE_GATHER_OFFSET: u32 = 0x8E5F;
pub const SAMPLE_POSITION: u32 = 0x8E50;
pub const SAMPLE_MASK: u32 = 0x8E51;
pub const SAMPLE_MASK_VALUE: u32 = 0x8E52;
pub const TEXTURE_2D_MULTISAMPLE: u32 = 0x9100;
pub const MAX_SAMPLE_MASK_WORDS: u32 = 0x8E59;
pub const MAX_COLOR_TEXTURE_SAMPLES: u32 = 0x910E;
pub const MAX_DEPTH_TEXTURE_SAMPLES: u32 = 0x910F;
pub const MAX_INTEGER_SAMPLES: u32 = 0x9110;
pub const TEXTURE_BINDING_2D_MULTISAMPLE: u32 = 0x9104;
pub const TEXTURE_SAMPLES: u32 = 0x9106;
pub const TEXTURE_FIXED_SAMPLE_LOCATIONS: u32 = 0x9107;
pub const TEXTURE_WIDTH: u32 = 0x1000;
pub const TEXTURE_HEIGHT: u32 = 0x1001;
pub const TEXTURE_DEPTH: u32 = 0x8071;
pub const TEXTURE_INTERNAL_FORMAT: u32 = 0x1003;
pub const TEXTURE_RED_SIZE: u32 = 0x805C;
pub const TEXTURE_GREEN_SIZE: u32 = 0x805D;
pub const TEXTURE_BLUE_SIZE: u32 = 0x805E;
pub const TEXTURE_ALPHA_SIZE: u32 = 0x805F;
pub const TEXTURE_DEPTH_SIZE: u32 = 0x884A;
pub const TEXTURE_STENCIL_SIZE: u32 = 0x88F1;
pub const TEXTURE_SHARED_SIZE: u32 = 0x8C3F;
pub const TEXTURE_RED_TYPE: u32 = 0x8C10;
pub const TEXTURE_GREEN_TYPE: u32 = 0x8C11;
pub const TEXTURE_BLUE_TYPE: u32 = 0x8C12;
pub const TEXTURE_ALPHA_TYPE: u32 = 0x8C13;
pub const TEXTURE_DEPTH_TYPE: u32 = 0x8C16;
pub const TEXTURE_COMPRESSED: u32 = 0x86A1;
pub const SAMPLER_2D_MULTISAMPLE: u32 = 0x9108;
pub const INT_SAMPLER_2D_MULTISAMPLE: u32 = 0x9109;
pub const UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE: u32 = 0x910A;
pub const VERTEX_ATTRIB_BINDING: u32 = 0x82D4;
pub const VERTEX_ATTRIB_RELATIVE_OFFSET: u32 = 0x82D5;
pub const VERTEX_BINDING_DIVISOR: u32 = 0x82D6;
pub const VERTEX_BINDING_OFFSET: u32 = 0x82D7;
pub const VERTEX_BINDING_STRIDE: u32 = 0x82D8;
pub const VERTEX_BINDING_BUFFER: u32 = 0x8F4F;
pub const MAX_VERTEX_ATTRIB_RELATIVE_OFFSET: u32 = 0x82D9;
pub const MAX_VERTEX_ATTRIB_BINDINGS: u32 = 0x82DA;
pub const MAX_VERTEX_ATTRIB_STRIDE: u32 = 0x82E5;
pub const MULTISAMPLE_LINE_WIDTH_RANGE: u32 = 0x9381;
pub const MULTISAMPLE_LINE_WIDTH_GRANULARITY: u32 = 0x9382;
pub const MULTIPLY: u32 = 0x9294;
pub const SCREEN: u32 = 0x9295;
pub const OVERLAY: u32 = 0x9296;
pub const DARKEN: u32 = 0x9297;
pub const LIGHTEN: u32 = 0x9298;
pub const COLORDODGE: u32 = 0x9299;
pub const COLORBURN: u32 = 0x929A;
pub const HARDLIGHT: u32 = 0x929B;
pub const SOFTLIGHT: u32 = 0x929C;
pub const DIFFERENCE: u32 = 0x929E;
pub const EXCLUSION: u32 = 0x92A0;
pub const HSL_HUE: u32 = 0x92AD;
pub const HSL_SATURATION: u32 = 0x92AE;
pub const HSL_COLOR: u32 = 0x92AF;
pub const HSL_LUMINOSITY: u32 = 0x92B0;
pub const DEBUG_OUTPUT_SYNCHRONOUS: u32 = 0x8242;
pub const DEBUG_NEXT_LOGGED_MESSAGE_LENGTH: u32 = 0x8243;
pub const DEBUG_CALLBACK_FUNCTION: u32 = 0x8244;
pub const DEBUG_CALLBACK_USER_PARAM: u32 = 0x8245;
pub const DEBUG_SOURCE_API: u32 = 0x8246;
pub const DEBUG_SOURCE_WINDOW_SYSTEM: u32 = 0x8247;
pub const DEBUG_SOURCE_SHADER_COMPILER: u32 = 0x8248;
pub const DEBUG_SOURCE_THIRD_PARTY: u32 = 0x8249;
pub const DEBUG_SOURCE_APPLICATION: u32 = 0x824A;
pub const DEBUG_SOURCE_OTHER: u32 = 0x824B;
pub const DEBUG_TYPE_ERROR: u32 = 0x824C;
pub const DEBUG_TYPE_DEPRECATED_BEHAVIOR: u32 = 0x824D;
pub const DEBUG_TYPE_UNDEFINED_BEHAVIOR: u32 = 0x824E;
pub const DEBUG_TYPE_PORTABILITY: u32 = 0x824F;
pub const DEBUG_TYPE_PERFORMANCE: u32 = 0x8250;
pub const DEBUG_TYPE_OTHER: u32 = 0x8251;
pub const DEBUG_TYPE_MARKER: u32 = 0x8268;
pub const DEBUG_TYPE_PUSH_GROUP: u32 = 0x8269;
pub const DEBUG_TYPE_POP_GROUP: u32 = 0x826A;
pub const DEBUG_SEVERITY_NOTIFICATION: u32 = 0x826B;
pub const MAX_DEBUG_GROUP_STACK_DEPTH: u32 = 0x826C;
pub const DEBUG_GROUP_STACK_DEPTH: u32 = 0x826D;
pub const BUFFER: u32 = 0x82E0;
pub const SHADER: u32 = 0x82E1;
pub const PROGRAM: u32 = 0x82E2;
pub const VERTEX_ARRAY: u32 = 0x8074;
pub const QUERY: u32 = 0x82E3;
pub const PROGRAM_PIPELINE: u32 = 0x82E4;
pub const SAMPLER: u32 = 0x82E6;
pub const MAX_LABEL_LENGTH: u32 = 0x82E8;
pub const MAX_DEBUG_MESSAGE_LENGTH: u32 = 0x9143;
pub const MAX_DEBUG_LOGGED_MESSAGES: u32 = 0x9144;
pub const DEBUG_LOGGED_MESSAGES: u32 = 0x9145;
pub const DEBUG_SEVERITY_HIGH: u32 = 0x9146;
pub const DEBUG_SEVERITY_MEDIUM: u32 = 0x9147;
pub const DEBUG_SEVERITY_LOW: u32 = 0x9148;
pub const DEBUG_OUTPUT: u32 = 0x92E0;
pub const CONTEXT_FLAG_DEBUG_BIT: u32 = 0x00000002;
pub const STACK_OVERFLOW: u32 = 0x0503;
pub const STACK_UNDERFLOW: u32 = 0x0504;
pub const GEOMETRY_SHADER: u32 = 0x8DD9;
pub const GEOMETRY_SHADER_BIT: u32 = 0x00000004;
pub const GEOMETRY_VERTICES_OUT: u32 = 0x8916;
pub const GEOMETRY_INPUT_TYPE: u32 = 0x8917;
pub const GEOMETRY_OUTPUT_TYPE: u32 = 0x8918;
pub const GEOMETRY_SHADER_INVOCATIONS: u32 = 0x887F;
pub const LAYER_PROVOKING_VERTEX: u32 = 0x825E;
pub const LINES_ADJACENCY: u32 = 0x000A;
pub const LINE_STRIP_ADJACENCY: u32 = 0x000B;
pub const TRIANGLES_ADJACENCY: u32 = 0x000C;
pub const TRIANGLE_STRIP_ADJACENCY: u32 = 0x000D;
pub const MAX_GEOMETRY_UNIFORM_COMPONENTS: u32 = 0x8DDF;
pub const MAX_GEOMETRY_UNIFORM_BLOCKS: u32 = 0x8A2C;
pub const MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS: u32 = 0x8A32;
pub const MAX_GEOMETRY_INPUT_COMPONENTS: u32 = 0x9123;
pub const MAX_GEOMETRY_OUTPUT_COMPONENTS: u32 = 0x9124;
pub const MAX_GEOMETRY_OUTPUT_VERTICES: u32 = 0x8DE0;
pub const MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS: u32 = 0x8DE1;
pub const MAX_GEOMETRY_SHADER_INVOCATIONS: u32 = 0x8E5A;
pub const MAX_GEOMETRY_TEXTURE_IMAGE_UNITS: u32 = 0x8C29;
pub const MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS: u32 = 0x92CF;
pub const MAX_GEOMETRY_ATOMIC_COUNTERS: u32 = 0x92D5;
pub const MAX_GEOMETRY_IMAGE_UNIFORMS: u32 = 0x90CD;
pub const MAX_GEOMETRY_SHADER_STORAGE_BLOCKS: u32 = 0x90D7;
pub const FIRST_VERTEX_CONVENTION: u32 = 0x8E4D;
pub const LAST_VERTEX_CONVENTION: u32 = 0x8E4E;
pub const UNDEFINED_VERTEX: u32 = 0x8260;
pub const PRIMITIVES_GENERATED: u32 = 0x8C87;
pub const FRAMEBUFFER_DEFAULT_LAYERS: u32 = 0x9312;
pub const MAX_FRAMEBUFFER_LAYERS: u32 = 0x9317;
pub const FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS: u32 = 0x8DA8;
pub const FRAMEBUFFER_ATTACHMENT_LAYERED: u32 = 0x8DA7;
pub const REFERENCED_BY_GEOMETRY_SHADER: u32 = 0x9309;
pub const PRIMITIVE_BOUNDING_BOX: u32 = 0x92BE;
pub const CONTEXT_FLAG_ROBUST_ACCESS_BIT: u32 = 0x00000004;
pub const CONTEXT_FLAGS: u32 = 0x821E;
pub const LOSE_CONTEXT_ON_RESET: u32 = 0x8252;
pub const GUILTY_CONTEXT_RESET: u32 = 0x8253;
pub const INNOCENT_CONTEXT_RESET: u32 = 0x8254;
pub const UNKNOWN_CONTEXT_RESET: u32 = 0x8255;
pub const RESET_NOTIFICATION_STRATEGY: u32 = 0x8256;
pub const NO_RESET_NOTIFICATION: u32 = 0x8261;
pub const CONTEXT_LOST: u32 = 0x0507;
pub const SAMPLE_SHADING: u32 = 0x8C36;
pub const MIN_SAMPLE_SHADING_VALUE: u32 = 0x8C37;
pub const MIN_FRAGMENT_INTERPOLATION_OFFSET: u32 = 0x8E5B;
pub const MAX_FRAGMENT_INTERPOLATION_OFFSET: u32 = 0x8E5C;
pub const FRAGMENT_INTERPOLATION_OFFSET_BITS: u32 = 0x8E5D;
pub const PATCHES: u32 = 0x000E;
pub const PATCH_VERTICES: u32 = 0x8E72;
pub const TESS_CONTROL_OUTPUT_VERTICES: u32 = 0x8E75;
pub const TESS_GEN_MODE: u32 = 0x8E76;
pub const TESS_GEN_SPACING: u32 = 0x8E77;
pub const TESS_GEN_VERTEX_ORDER: u32 = 0x8E78;
pub const TESS_GEN_POINT_MODE: u32 = 0x8E79;
pub const ISOLINES: u32 = 0x8E7A;
pub const QUADS: u32 = 0x0007;
pub const FRACTIONAL_ODD: u32 = 0x8E7B;
pub const FRACTIONAL_EVEN: u32 = 0x8E7C;
pub const MAX_PATCH_VERTICES: u32 = 0x8E7D;
pub const MAX_TESS_GEN_LEVEL: u32 = 0x8E7E;
pub const MAX_TESS_CONTROL_UNIFORM_COMPONENTS: u32 = 0x8E7F;
pub const MAX_TESS_EVALUATION_UNIFORM_COMPONENTS: u32 = 0x8E80;
pub const MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS: u32 = 0x8E81;
pub const MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS: u32 = 0x8E82;
pub const MAX_TESS_CONTROL_OUTPUT_COMPONENTS: u32 = 0x8E83;
pub const MAX_TESS_PATCH_COMPONENTS: u32 = 0x8E84;
pub const MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS: u32 = 0x8E85;
pub const MAX_TESS_EVALUATION_OUTPUT_COMPONENTS: u32 = 0x8E86;
pub const MAX_TESS_CONTROL_UNIFORM_BLOCKS: u32 = 0x8E89;
pub const MAX_TESS_EVALUATION_UNIFORM_BLOCKS: u32 = 0x8E8A;
pub const MAX_TESS_CONTROL_INPUT_COMPONENTS: u32 = 0x886C;
pub const MAX_TESS_EVALUATION_INPUT_COMPONENTS: u32 = 0x886D;
pub const MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS: u32 = 0x8E1E;
pub const MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS: u32 = 0x8E1F;
pub const MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS: u32 = 0x92CD;
pub const MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS: u32 = 0x92CE;
pub const MAX_TESS_CONTROL_ATOMIC_COUNTERS: u32 = 0x92D3;
pub const MAX_TESS_EVALUATION_ATOMIC_COUNTERS: u32 = 0x92D4;
pub const MAX_TESS_CONTROL_IMAGE_UNIFORMS: u32 = 0x90CB;
pub const MAX_TESS_EVALUATION_IMAGE_UNIFORMS: u32 = 0x90CC;
pub const MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS: u32 = 0x90D8;
pub const MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS: u32 = 0x90D9;
pub const PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED: u32 = 0x8221;
pub const IS_PER_PATCH: u32 = 0x92E7;
pub const REFERENCED_BY_TESS_CONTROL_SHADER: u32 = 0x9307;
pub const REFERENCED_BY_TESS_EVALUATION_SHADER: u32 = 0x9308;
pub const TESS_CONTROL_SHADER: u32 = 0x8E88;
pub const TESS_EVALUATION_SHADER: u32 = 0x8E87;
pub const TESS_CONTROL_SHADER_BIT: u32 = 0x00000008;
pub const TESS_EVALUATION_SHADER_BIT: u32 = 0x00000010;
pub const TEXTURE_BORDER_COLOR: u32 = 0x1004;
pub const CLAMP_TO_BORDER: u32 = 0x812D;
pub const TEXTURE_BUFFER: u32 = 0x8C2A;
pub const TEXTURE_BUFFER_BINDING: u32 = 0x8C2A;
pub const MAX_TEXTURE_BUFFER_SIZE: u32 = 0x8C2B;
pub const TEXTURE_BINDING_BUFFER: u32 = 0x8C2C;
pub const TEXTURE_BUFFER_DATA_STORE_BINDING: u32 = 0x8C2D;
pub const TEXTURE_BUFFER_OFFSET_ALIGNMENT: u32 = 0x919F;
pub const SAMPLER_BUFFER: u32 = 0x8DC2;
pub const INT_SAMPLER_BUFFER: u32 = 0x8DD0;
pub const UNSIGNED_INT_SAMPLER_BUFFER: u32 = 0x8DD8;
pub const IMAGE_BUFFER: u32 = 0x9051;
pub const INT_IMAGE_BUFFER: u32 = 0x905C;
pub const UNSIGNED_INT_IMAGE_BUFFER: u32 = 0x9067;
pub const TEXTURE_BUFFER_OFFSET: u32 = 0x919D;
pub const TEXTURE_BUFFER_SIZE: u32 = 0x919E;
pub const COMPRESSED_RGBA_ASTC_4x4: u32 = 0x93B0;
pub const COMPRESSED_RGBA_ASTC_5x4: u32 = 0x93B1;
pub const COMPRESSED_RGBA_ASTC_5x5: u32 = 0x93B2;
pub const COMPRESSED_RGBA_ASTC_6x5: u32 = 0x93B3;
pub const COMPRESSED_RGBA_ASTC_6x6: u32 = 0x93B4;
pub const COMPRESSED_RGBA_ASTC_8x5: u32 = 0x93B5;
pub const COMPRESSED_RGBA_ASTC_8x6: u32 = 0x93B6;
pub const COMPRESSED_RGBA_ASTC_8x8: u32 = 0x93B7;
pub const COMPRESSED_RGBA_ASTC_10x5: u32 = 0x93B8;
pub const COMPRESSED_RGBA_ASTC_10x6: u32 = 0x93B9;
pub const COMPRESSED_RGBA_ASTC_10x8: u32 = 0x93BA;
pub const COMPRESSED_RGBA_ASTC_10x10: u32 = 0x93BB;
pub const COMPRESSED_RGBA_ASTC_12x10: u32 = 0x93BC;
pub const COMPRESSED_RGBA_ASTC_12x12: u32 = 0x93BD;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_4x4: u32 = 0x93D0;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_5x4: u32 = 0x93D1;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_5x5: u32 = 0x93D2;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_6x5: u32 = 0x93D3;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_6x6: u32 = 0x93D4;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_8x5: u32 = 0x93D5;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_8x6: u32 = 0x93D6;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_8x8: u32 = 0x93D7;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_10x5: u32 = 0x93D8;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_10x6: u32 = 0x93D9;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_10x8: u32 = 0x93DA;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_10x10: u32 = 0x93DB;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_12x10: u32 = 0x93DC;
pub const COMPRESSED_SRGB8_ALPHA8_ASTC_12x12: u32 = 0x93DD;
pub const TEXTURE_CUBE_MAP_ARRAY: u32 = 0x9009;
pub const TEXTURE_BINDING_CUBE_MAP_ARRAY: u32 = 0x900A;
pub const SAMPLER_CUBE_MAP_ARRAY: u32 = 0x900C;
pub const SAMPLER_CUBE_MAP_ARRAY_SHADOW: u32 = 0x900D;
pub const INT_SAMPLER_CUBE_MAP_ARRAY: u32 = 0x900E;
pub const UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY: u32 = 0x900F;
pub const IMAGE_CUBE_MAP_ARRAY: u32 = 0x9054;
pub const INT_IMAGE_CUBE_MAP_ARRAY: u32 = 0x905F;
pub const UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY: u32 = 0x906A;
pub const TEXTURE_2D_MULTISAMPLE_ARRAY: u32 = 0x9102;
pub const TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY: u32 = 0x9105;
pub const SAMPLER_2D_MULTISAMPLE_ARRAY: u32 = 0x910B;
pub const INT_SAMPLER_2D_MULTISAMPLE_ARRAY: u32 = 0x910C;
pub const UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY: u32 = 0x910D;



activeTexture: glActiveTextureFn,
attachShader: glAttachShaderFn,
bindAttribLocation: glBindAttribLocationFn,
bindBuffer: glBindBufferFn,
bindFramebuffer: glBindFramebufferFn,
bindRenderbuffer: glBindRenderbufferFn,
bindTexture: glBindTextureFn,
blendColor: glBlendColorFn,
blendEquation: glBlendEquationFn,
blendEquationSeparate: glBlendEquationSeparateFn,
blendFunc: glBlendFuncFn,
blendFuncSeparate: glBlendFuncSeparateFn,
bufferData: glBufferDataFn,
bufferSubData: glBufferSubDataFn,
checkFramebufferStatus: glCheckFramebufferStatusFn,
clear: glClearFn,
clearColor: glClearColorFn,
clearDepthf: glClearDepthfFn,
clearStencil: glClearStencilFn,
colorMask: glColorMaskFn,
compileShader: glCompileShaderFn,
compressedTexImage2D: glCompressedTexImage2DFn,
compressedTexSubImage2D: glCompressedTexSubImage2DFn,
copyTexImage2D: glCopyTexImage2DFn,
copyTexSubImage2D: glCopyTexSubImage2DFn,
createProgram: glCreateProgramFn,
createShader: glCreateShaderFn,
cullFace: glCullFaceFn,
deleteBuffers: glDeleteBuffersFn,
deleteFramebuffers: glDeleteFramebuffersFn,
deleteProgram: glDeleteProgramFn,
deleteRenderbuffers: glDeleteRenderbuffersFn,
deleteShader: glDeleteShaderFn,
deleteTextures: glDeleteTexturesFn,
depthFunc: glDepthFuncFn,
depthMask: glDepthMaskFn,
depthRangef: glDepthRangefFn,
detachShader: glDetachShaderFn,
disable: glDisableFn,
disableVertexAttribArray: glDisableVertexAttribArrayFn,
drawArrays: glDrawArraysFn,
drawElements: glDrawElementsFn,
enable: glEnableFn,
enableVertexAttribArray: glEnableVertexAttribArrayFn,
finish: glFinishFn,
flush: glFlushFn,
framebufferRenderbuffer: glFramebufferRenderbufferFn,
framebufferTexture2D: glFramebufferTexture2DFn,
frontFace: glFrontFaceFn,
genBuffers: glGenBuffersFn,
generateMipmap: glGenerateMipmapFn,
genFramebuffers: glGenFramebuffersFn,
genRenderbuffers: glGenRenderbuffersFn,
genTextures: glGenTexturesFn,
getActiveAttrib: glGetActiveAttribFn,
getActiveUniform: glGetActiveUniformFn,
getAttachedShaders: glGetAttachedShadersFn,
getAttribLocation: glGetAttribLocationFn,
getBooleanv: glGetBooleanvFn,
getBufferParameteriv: glGetBufferParameterivFn,
getError: glGetErrorFn,
getFloatv: glGetFloatvFn,
getFramebufferAttachmentParameteriv: glGetFramebufferAttachmentParameterivFn,
getIntegerv: glGetIntegervFn,
getProgramiv: glGetProgramivFn,
getProgramInfoLog: glGetProgramInfoLogFn,
getRenderbufferParameteriv: glGetRenderbufferParameterivFn,
getShaderiv: glGetShaderivFn,
getShaderInfoLog: glGetShaderInfoLogFn,
getShaderPrecisionFormat: glGetShaderPrecisionFormatFn,
getShaderSource: glGetShaderSourceFn,
getString: glGetStringFn,
getTexParameterfv: glGetTexParameterfvFn,
getTexParameteriv: glGetTexParameterivFn,
getUniformfv: glGetUniformfvFn,
getUniformiv: glGetUniformivFn,
getUniformLocation: glGetUniformLocationFn,
getVertexAttribfv: glGetVertexAttribfvFn,
getVertexAttribiv: glGetVertexAttribivFn,
getVertexAttribPointerv: glGetVertexAttribPointervFn,
hint: glHintFn,
isBuffer: glIsBufferFn,
isEnabled: glIsEnabledFn,
isFramebuffer: glIsFramebufferFn,
isProgram: glIsProgramFn,
isRenderbuffer: glIsRenderbufferFn,
isShader: glIsShaderFn,
isTexture: glIsTextureFn,
lineWidth: glLineWidthFn,
linkProgram: glLinkProgramFn,
pixelStorei: glPixelStoreiFn,
polygonOffset: glPolygonOffsetFn,
readPixels: glReadPixelsFn,
releaseShaderCompiler: glReleaseShaderCompilerFn,
renderbufferStorage: glRenderbufferStorageFn,
sampleCoverage: glSampleCoverageFn,
scissor: glScissorFn,
shaderBinary: glShaderBinaryFn,
shaderSource: glShaderSourceFn,
stencilFunc: glStencilFuncFn,
stencilFuncSeparate: glStencilFuncSeparateFn,
stencilMask: glStencilMaskFn,
stencilMaskSeparate: glStencilMaskSeparateFn,
stencilOp: glStencilOpFn,
stencilOpSeparate: glStencilOpSeparateFn,
texImage2D: glTexImage2DFn,
texParameterf: glTexParameterfFn,
texParameterfv: glTexParameterfvFn,
texParameteri: glTexParameteriFn,
texParameteriv: glTexParameterivFn,
texSubImage2D: glTexSubImage2DFn,
uniform1f: glUniform1fFn,
uniform1fv: glUniform1fvFn,
uniform1i: glUniform1iFn,
uniform1iv: glUniform1ivFn,
uniform2f: glUniform2fFn,
uniform2fv: glUniform2fvFn,
uniform2i: glUniform2iFn,
uniform2iv: glUniform2ivFn,
uniform3f: glUniform3fFn,
uniform3fv: glUniform3fvFn,
uniform3i: glUniform3iFn,
uniform3iv: glUniform3ivFn,
uniform4f: glUniform4fFn,
uniform4fv: glUniform4fvFn,
uniform4i: glUniform4iFn,
uniform4iv: glUniform4ivFn,
uniformMatrix2fv: glUniformMatrix2fvFn,
uniformMatrix3fv: glUniformMatrix3fvFn,
uniformMatrix4fv: glUniformMatrix4fvFn,
useProgram: glUseProgramFn,
validateProgram: glValidateProgramFn,
vertexAttrib1f: glVertexAttrib1fFn,
vertexAttrib1fv: glVertexAttrib1fvFn,
vertexAttrib2f: glVertexAttrib2fFn,
vertexAttrib2fv: glVertexAttrib2fvFn,
vertexAttrib3f: glVertexAttrib3fFn,
vertexAttrib3fv: glVertexAttrib3fvFn,
vertexAttrib4f: glVertexAttrib4fFn,
vertexAttrib4fv: glVertexAttrib4fvFn,
vertexAttribPointer: glVertexAttribPointerFn,
viewport: glViewportFn,
readBuffer: glReadBufferFn,
drawRangeElements: glDrawRangeElementsFn,
texImage3D: glTexImage3DFn,
texSubImage3D: glTexSubImage3DFn,
copyTexSubImage3D: glCopyTexSubImage3DFn,
compressedTexImage3D: glCompressedTexImage3DFn,
compressedTexSubImage3D: glCompressedTexSubImage3DFn,
genQueries: glGenQueriesFn,
deleteQueries: glDeleteQueriesFn,
isQuery: glIsQueryFn,
beginQuery: glBeginQueryFn,
endQuery: glEndQueryFn,
getQueryiv: glGetQueryivFn,
getQueryObjectuiv: glGetQueryObjectuivFn,
unmapBuffer: glUnmapBufferFn,
getBufferPointerv: glGetBufferPointervFn,
drawBuffers: glDrawBuffersFn,
uniformMatrix2x3fv: glUniformMatrix2x3fvFn,
uniformMatrix3x2fv: glUniformMatrix3x2fvFn,
uniformMatrix2x4fv: glUniformMatrix2x4fvFn,
uniformMatrix4x2fv: glUniformMatrix4x2fvFn,
uniformMatrix3x4fv: glUniformMatrix3x4fvFn,
uniformMatrix4x3fv: glUniformMatrix4x3fvFn,
blitFramebuffer: glBlitFramebufferFn,
renderbufferStorageMultisample: glRenderbufferStorageMultisampleFn,
framebufferTextureLayer: glFramebufferTextureLayerFn,
mapBufferRange: glMapBufferRangeFn,
flushMappedBufferRange: glFlushMappedBufferRangeFn,
bindVertexArray: glBindVertexArrayFn,
deleteVertexArrays: glDeleteVertexArraysFn,
genVertexArrays: glGenVertexArraysFn,
isVertexArray: glIsVertexArrayFn,
getIntegeri_v: glGetIntegeri_vFn,
beginTransformFeedback: glBeginTransformFeedbackFn,
endTransformFeedback: glEndTransformFeedbackFn,
bindBufferRange: glBindBufferRangeFn,
bindBufferBase: glBindBufferBaseFn,
transformFeedbackVaryings: glTransformFeedbackVaryingsFn,
getTransformFeedbackVarying: glGetTransformFeedbackVaryingFn,
vertexAttribIPointer: glVertexAttribIPointerFn,
getVertexAttribIiv: glGetVertexAttribIivFn,
getVertexAttribIuiv: glGetVertexAttribIuivFn,
vertexAttribI4i: glVertexAttribI4iFn,
vertexAttribI4ui: glVertexAttribI4uiFn,
vertexAttribI4iv: glVertexAttribI4ivFn,
vertexAttribI4uiv: glVertexAttribI4uivFn,
getUniformuiv: glGetUniformuivFn,
getFragDataLocation: glGetFragDataLocationFn,
uniform1ui: glUniform1uiFn,
uniform2ui: glUniform2uiFn,
uniform3ui: glUniform3uiFn,
uniform4ui: glUniform4uiFn,
uniform1uiv: glUniform1uivFn,
uniform2uiv: glUniform2uivFn,
uniform3uiv: glUniform3uivFn,
uniform4uiv: glUniform4uivFn,
clearBufferiv: glClearBufferivFn,
clearBufferuiv: glClearBufferuivFn,
clearBufferfv: glClearBufferfvFn,
clearBufferfi: glClearBufferfiFn,
getStringi: glGetStringiFn,
copyBufferSubData: glCopyBufferSubDataFn,
getUniformIndices: glGetUniformIndicesFn,
getActiveUniformsiv: glGetActiveUniformsivFn,
getUniformBlockIndex: glGetUniformBlockIndexFn,
getActiveUniformBlockiv: glGetActiveUniformBlockivFn,
getActiveUniformBlockName: glGetActiveUniformBlockNameFn,
uniformBlockBinding: glUniformBlockBindingFn,
drawArraysInstanced: glDrawArraysInstancedFn,
drawElementsInstanced: glDrawElementsInstancedFn,
fenceSync: glFenceSyncFn,
isSync: glIsSyncFn,
deleteSync: glDeleteSyncFn,
clientWaitSync: glClientWaitSyncFn,
waitSync: glWaitSyncFn,
getInteger64v: glGetInteger64vFn,
getSynciv: glGetSyncivFn,
getInteger64i_v: glGetInteger64i_vFn,
getBufferParameteri64v: glGetBufferParameteri64vFn,
genSamplers: glGenSamplersFn,
deleteSamplers: glDeleteSamplersFn,
isSampler: glIsSamplerFn,
bindSampler: glBindSamplerFn,
samplerParameteri: glSamplerParameteriFn,
samplerParameteriv: glSamplerParameterivFn,
samplerParameterf: glSamplerParameterfFn,
samplerParameterfv: glSamplerParameterfvFn,
getSamplerParameteriv: glGetSamplerParameterivFn,
getSamplerParameterfv: glGetSamplerParameterfvFn,
vertexAttribDivisor: glVertexAttribDivisorFn,
bindTransformFeedback: glBindTransformFeedbackFn,
deleteTransformFeedbacks: glDeleteTransformFeedbacksFn,
genTransformFeedbacks: glGenTransformFeedbacksFn,
isTransformFeedback: glIsTransformFeedbackFn,
pauseTransformFeedback: glPauseTransformFeedbackFn,
resumeTransformFeedback: glResumeTransformFeedbackFn,
getProgramBinary: glGetProgramBinaryFn,
programBinary: glProgramBinaryFn,
programParameteri: glProgramParameteriFn,
invalidateFramebuffer: glInvalidateFramebufferFn,
invalidateSubFramebuffer: glInvalidateSubFramebufferFn,
texStorage2D: glTexStorage2DFn,
texStorage3D: glTexStorage3DFn,
getInternalformativ: glGetInternalformativFn,
dispatchCompute: glDispatchComputeFn,
dispatchComputeIndirect: glDispatchComputeIndirectFn,
drawArraysIndirect: glDrawArraysIndirectFn,
drawElementsIndirect: glDrawElementsIndirectFn,
framebufferParameteri: glFramebufferParameteriFn,
getFramebufferParameteriv: glGetFramebufferParameterivFn,
getProgramInterfaceiv: glGetProgramInterfaceivFn,
getProgramResourceIndex: glGetProgramResourceIndexFn,
getProgramResourceName: glGetProgramResourceNameFn,
getProgramResourceiv: glGetProgramResourceivFn,
getProgramResourceLocation: glGetProgramResourceLocationFn,
useProgramStages: glUseProgramStagesFn,
activeShaderProgram: glActiveShaderProgramFn,
createShaderProgramv: glCreateShaderProgramvFn,
bindProgramPipeline: glBindProgramPipelineFn,
deleteProgramPipelines: glDeleteProgramPipelinesFn,
genProgramPipelines: glGenProgramPipelinesFn,
isProgramPipeline: glIsProgramPipelineFn,
getProgramPipelineiv: glGetProgramPipelineivFn,
programUniform1i: glProgramUniform1iFn,
programUniform2i: glProgramUniform2iFn,
programUniform3i: glProgramUniform3iFn,
programUniform4i: glProgramUniform4iFn,
programUniform1ui: glProgramUniform1uiFn,
programUniform2ui: glProgramUniform2uiFn,
programUniform3ui: glProgramUniform3uiFn,
programUniform4ui: glProgramUniform4uiFn,
programUniform1f: glProgramUniform1fFn,
programUniform2f: glProgramUniform2fFn,
programUniform3f: glProgramUniform3fFn,
programUniform4f: glProgramUniform4fFn,
programUniform1iv: glProgramUniform1ivFn,
programUniform2iv: glProgramUniform2ivFn,
programUniform3iv: glProgramUniform3ivFn,
programUniform4iv: glProgramUniform4ivFn,
programUniform1uiv: glProgramUniform1uivFn,
programUniform2uiv: glProgramUniform2uivFn,
programUniform3uiv: glProgramUniform3uivFn,
programUniform4uiv: glProgramUniform4uivFn,
programUniform1fv: glProgramUniform1fvFn,
programUniform2fv: glProgramUniform2fvFn,
programUniform3fv: glProgramUniform3fvFn,
programUniform4fv: glProgramUniform4fvFn,
programUniformMatrix2fv: glProgramUniformMatrix2fvFn,
programUniformMatrix3fv: glProgramUniformMatrix3fvFn,
programUniformMatrix4fv: glProgramUniformMatrix4fvFn,
programUniformMatrix2x3fv: glProgramUniformMatrix2x3fvFn,
programUniformMatrix3x2fv: glProgramUniformMatrix3x2fvFn,
programUniformMatrix2x4fv: glProgramUniformMatrix2x4fvFn,
programUniformMatrix4x2fv: glProgramUniformMatrix4x2fvFn,
programUniformMatrix3x4fv: glProgramUniformMatrix3x4fvFn,
programUniformMatrix4x3fv: glProgramUniformMatrix4x3fvFn,
validateProgramPipeline: glValidateProgramPipelineFn,
getProgramPipelineInfoLog: glGetProgramPipelineInfoLogFn,
bindImageTexture: glBindImageTextureFn,
getBooleani_v: glGetBooleani_vFn,
memoryBarrier: glMemoryBarrierFn,
memoryBarrierByRegion: glMemoryBarrierByRegionFn,
texStorage2DMultisample: glTexStorage2DMultisampleFn,
getMultisamplefv: glGetMultisamplefvFn,
sampleMaski: glSampleMaskiFn,
getTexLevelParameteriv: glGetTexLevelParameterivFn,
getTexLevelParameterfv: glGetTexLevelParameterfvFn,
bindVertexBuffer: glBindVertexBufferFn,
vertexAttribFormat: glVertexAttribFormatFn,
vertexAttribIFormat: glVertexAttribIFormatFn,
vertexAttribBinding: glVertexAttribBindingFn,
vertexBindingDivisor: glVertexBindingDivisorFn,
blendBarrier: glBlendBarrierFn,
copyImageSubData: glCopyImageSubDataFn,
debugMessageControl: glDebugMessageControlFn,
debugMessageInsert: glDebugMessageInsertFn,
debugMessageCallback: glDebugMessageCallbackFn,
getDebugMessageLog: glGetDebugMessageLogFn,
pushDebugGroup: glPushDebugGroupFn,
popDebugGroup: glPopDebugGroupFn,
objectLabel: glObjectLabelFn,
getObjectLabel: glGetObjectLabelFn,
objectPtrLabel: glObjectPtrLabelFn,
getObjectPtrLabel: glGetObjectPtrLabelFn,
getPointerv: glGetPointervFn,
enablei: glEnableiFn,
disablei: glDisableiFn,
blendEquationi: glBlendEquationiFn,
blendEquationSeparatei: glBlendEquationSeparateiFn,
blendFunci: glBlendFunciFn,
blendFuncSeparatei: glBlendFuncSeparateiFn,
colorMaski: glColorMaskiFn,
isEnabledi: glIsEnablediFn,
drawElementsBaseVertex: glDrawElementsBaseVertexFn,
drawRangeElementsBaseVertex: glDrawRangeElementsBaseVertexFn,
drawElementsInstancedBaseVertex: glDrawElementsInstancedBaseVertexFn,
framebufferTexture: glFramebufferTextureFn,
primitiveBoundingBox: glPrimitiveBoundingBoxFn,
getGraphicsResetStatus: glGetGraphicsResetStatusFn,
readnPixels: glReadnPixelsFn,
getnUniformfv: glGetnUniformfvFn,
getnUniformiv: glGetnUniformivFn,
getnUniformuiv: glGetnUniformuivFn,
minSampleShading: glMinSampleShadingFn,
patchParameteri: glPatchParameteriFn,
texParameterIiv: glTexParameterIivFn,
texParameterIuiv: glTexParameterIuivFn,
getTexParameterIiv: glGetTexParameterIivFn,
getTexParameterIuiv: glGetTexParameterIuivFn,
samplerParameterIiv: glSamplerParameterIivFn,
samplerParameterIuiv: glSamplerParameterIuivFn,
getSamplerParameterIiv: glGetSamplerParameterIivFn,
getSamplerParameterIuiv: glGetSamplerParameterIuivFn,
texBuffer: glTexBufferFn,
texBufferRange: glTexBufferRangeFn,
texStorage3DMultisample: glTexStorage3DMultisampleFn,



pub const glActiveTextureFn = fn( texture: u32 ) callconv(.C) void;
pub const glAttachShaderFn = fn( program: u32, shader: u32 ) callconv(.C) void;
pub const glBindAttribLocationFn = fn( program: u32, index: u32, name: [*:0]const u8 ) callconv(.C) void;
pub const glBindBufferFn = fn( target: u32, buffer: u32 ) callconv(.C) void;
pub const glBindFramebufferFn = fn( target: u32, framebuffer: u32 ) callconv(.C) void;
pub const glBindRenderbufferFn = fn( target: u32, renderbuffer: u32 ) callconv(.C) void;
pub const glBindTextureFn = fn( target: u32, texture: u32 ) callconv(.C) void;
pub const glBlendColorFn = fn( red: f32, green: f32, blue: f32, alpha: f32 ) callconv(.C) void;
pub const glBlendEquationFn = fn( mode: u32 ) callconv(.C) void;
pub const glBlendEquationSeparateFn = fn( modeRGB: u32, modeAlpha: u32 ) callconv(.C) void;
pub const glBlendFuncFn = fn( sfactor: u32, dfactor: u32 ) callconv(.C) void;
pub const glBlendFuncSeparateFn = fn( sfactorRGB: u32, dfactorRGB: u32, sfactorAlpha: u32, dfactorAlpha: u32 ) callconv(.C) void;
pub const glBufferDataFn = fn( target: u32, size: isize, data: ?*const anyopaque, usage: u32 ) callconv(.C) void;
pub const glBufferSubDataFn = fn( target: u32, offset: isize, size: isize, data: ?*const anyopaque ) callconv(.C) void;
pub const glCheckFramebufferStatusFn = fn( target: u32 ) callconv(.C) u32;
pub const glClearFn = fn( mask: u32 ) callconv(.C) void;
pub const glClearColorFn = fn( red: f32, green: f32, blue: f32, alpha: f32 ) callconv(.C) void;
pub const glClearDepthfFn = fn( d: f32 ) callconv(.C) void;
pub const glClearStencilFn = fn( s: i32 ) callconv(.C) void;
pub const glColorMaskFn = fn( red: bool, green: bool, blue: bool, alpha: bool ) callconv(.C) void;
pub const glCompileShaderFn = fn( shader: u32 ) callconv(.C) void;
pub const glCompressedTexImage2DFn = fn( target: u32, level: i32, internalformat: u32, width: i32, height: i32, border: i32, imageSize: i32, data: ?*const anyopaque ) callconv(.C) void;
pub const glCompressedTexSubImage2DFn = fn( target: u32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: u32, imageSize: i32, data: ?*const anyopaque ) callconv(.C) void;
pub const glCopyTexImage2DFn = fn( target: u32, level: i32, internalformat: u32, x: i32, y: i32, width: i32, height: i32, border: i32 ) callconv(.C) void;
pub const glCopyTexSubImage2DFn = fn( target: u32, level: i32, xoffset: i32, yoffset: i32, x: i32, y: i32, width: i32, height: i32 ) callconv(.C) void;
pub const glCreateProgramFn = fn(  ) callconv(.C) u32;
pub const glCreateShaderFn = fn( type: u32 ) callconv(.C) u32;
pub const glCullFaceFn = fn( mode: u32 ) callconv(.C) void;
pub const glDeleteBuffersFn = fn( n: i32, buffers: [*c]const u32 ) callconv(.C) void;
pub const glDeleteFramebuffersFn = fn( n: i32, framebuffers: [*c]const u32 ) callconv(.C) void;
pub const glDeleteProgramFn = fn( program: u32 ) callconv(.C) void;
pub const glDeleteRenderbuffersFn = fn( n: i32, renderbuffers: [*c]const u32 ) callconv(.C) void;
pub const glDeleteShaderFn = fn( shader: u32 ) callconv(.C) void;
pub const glDeleteTexturesFn = fn( n: i32, textures: [*c]const u32 ) callconv(.C) void;
pub const glDepthFuncFn = fn( func: u32 ) callconv(.C) void;
pub const glDepthMaskFn = fn( flag: bool ) callconv(.C) void;
pub const glDepthRangefFn = fn( n: f32, f: f32 ) callconv(.C) void;
pub const glDetachShaderFn = fn( program: u32, shader: u32 ) callconv(.C) void;
pub const glDisableFn = fn( cap: u32 ) callconv(.C) void;
pub const glDisableVertexAttribArrayFn = fn( index: u32 ) callconv(.C) void;
pub const glDrawArraysFn = fn( mode: u32, first: i32, count: i32 ) callconv(.C) void;
pub const glDrawElementsFn = fn( mode: u32, count: i32, type: u32, indices: ?*const anyopaque ) callconv(.C) void;
pub const glEnableFn = fn( cap: u32 ) callconv(.C) void;
pub const glEnableVertexAttribArrayFn = fn( index: u32 ) callconv(.C) void;
pub const glFinishFn = fn(  ) callconv(.C) void;
pub const glFlushFn = fn(  ) callconv(.C) void;
pub const glFramebufferRenderbufferFn = fn( target: u32, attachment: u32, renderbuffertarget: u32, renderbuffer: u32 ) callconv(.C) void;
pub const glFramebufferTexture2DFn = fn( target: u32, attachment: u32, textarget: u32, texture: u32, level: i32 ) callconv(.C) void;
pub const glFrontFaceFn = fn( mode: u32 ) callconv(.C) void;
pub const glGenBuffersFn = fn( n: i32, buffers: [*c]u32 ) callconv(.C) void;
pub const glGenerateMipmapFn = fn( target: u32 ) callconv(.C) void;
pub const glGenFramebuffersFn = fn( n: i32, framebuffers: [*c]u32 ) callconv(.C) void;
pub const glGenRenderbuffersFn = fn( n: i32, renderbuffers: [*c]u32 ) callconv(.C) void;
pub const glGenTexturesFn = fn( n: i32, textures: [*c]u32 ) callconv(.C) void;
pub const glGetActiveAttribFn = fn( program: u32, index: u32, bufSize: i32, length: [*c]i32, size: [*c]i32, type: [*c]u32, name: [*c]u8 ) callconv(.C) void;
pub const glGetActiveUniformFn = fn( program: u32, index: u32, bufSize: i32, length: [*c]i32, size: [*c]i32, type: [*c]u32, name: [*c]u8 ) callconv(.C) void;
pub const glGetAttachedShadersFn = fn( program: u32, maxCount: i32, count: [*c]i32, shaders: [*c]u32 ) callconv(.C) void;
pub const glGetAttribLocationFn = fn( program: u32, name: [*:0]const u8 ) callconv(.C) i32;
pub const glGetBooleanvFn = fn( pname: u32, data: [*c]bool ) callconv(.C) void;
pub const glGetBufferParameterivFn = fn( target: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetErrorFn = fn(  ) callconv(.C) u32;
pub const glGetFloatvFn = fn( pname: u32, data: [*c]f32 ) callconv(.C) void;
pub const glGetFramebufferAttachmentParameterivFn = fn( target: u32, attachment: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetIntegervFn = fn( pname: u32, data: [*c]i32 ) callconv(.C) void;
pub const glGetProgramivFn = fn( program: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetProgramInfoLogFn = fn( program: u32, bufSize: i32, length: [*c]i32, infoLog: [*c]u8 ) callconv(.C) void;
pub const glGetRenderbufferParameterivFn = fn( target: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetShaderivFn = fn( shader: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetShaderInfoLogFn = fn( shader: u32, bufSize: i32, length: [*c]i32, infoLog: [*c]u8 ) callconv(.C) void;
pub const glGetShaderPrecisionFormatFn = fn( shadertype: u32, precisiontype: u32, range: [*c]i32, precision: [*c]i32 ) callconv(.C) void;
pub const glGetShaderSourceFn = fn( shader: u32, bufSize: i32, length: [*c]i32, source: [*c]u8 ) callconv(.C) void;
pub const glGetStringFn = fn( name: u32 ) callconv(.C) u8;
pub const glGetTexParameterfvFn = fn( target: u32, pname: u32, params: [*c]f32 ) callconv(.C) void;
pub const glGetTexParameterivFn = fn( target: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetUniformfvFn = fn( program: u32, location: i32, params: [*c]f32 ) callconv(.C) void;
pub const glGetUniformivFn = fn( program: u32, location: i32, params: [*c]i32 ) callconv(.C) void;
pub const glGetUniformLocationFn = fn( program: u32, name: [*:0]const u8 ) callconv(.C) i32;
pub const glGetVertexAttribfvFn = fn( index: u32, pname: u32, params: [*c]f32 ) callconv(.C) void;
pub const glGetVertexAttribivFn = fn( index: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetVertexAttribPointervFn = fn( index: u32, pname: u32, pointer: ?*anyopaque ) callconv(.C) void;
pub const glHintFn = fn( target: u32, mode: u32 ) callconv(.C) void;
pub const glIsBufferFn = fn( buffer: u32 ) callconv(.C) bool;
pub const glIsEnabledFn = fn( cap: u32 ) callconv(.C) bool;
pub const glIsFramebufferFn = fn( framebuffer: u32 ) callconv(.C) bool;
pub const glIsProgramFn = fn( program: u32 ) callconv(.C) bool;
pub const glIsRenderbufferFn = fn( renderbuffer: u32 ) callconv(.C) bool;
pub const glIsShaderFn = fn( shader: u32 ) callconv(.C) bool;
pub const glIsTextureFn = fn( texture: u32 ) callconv(.C) bool;
pub const glLineWidthFn = fn( width: f32 ) callconv(.C) void;
pub const glLinkProgramFn = fn( program: u32 ) callconv(.C) void;
pub const glPixelStoreiFn = fn( pname: u32, param: i32 ) callconv(.C) void;
pub const glPolygonOffsetFn = fn( factor: f32, units: f32 ) callconv(.C) void;
pub const glReadPixelsFn = fn( x: i32, y: i32, width: i32, height: i32, format: u32, type: u32, pixels: ?*anyopaque ) callconv(.C) void;
pub const glReleaseShaderCompilerFn = fn(  ) callconv(.C) void;
pub const glRenderbufferStorageFn = fn( target: u32, internalformat: u32, width: i32, height: i32 ) callconv(.C) void;
pub const glSampleCoverageFn = fn( value: f32, invert: bool ) callconv(.C) void;
pub const glScissorFn = fn( x: i32, y: i32, width: i32, height: i32 ) callconv(.C) void;
pub const glShaderBinaryFn = fn( count: i32, shaders: [*c]const u32, binaryFormat: u32, binary: ?*const anyopaque, length: i32 ) callconv(.C) void;
pub const glShaderSourceFn = fn( shader: u32, count: i32, string: [*c]const [*:0]const u8, length: [*c]const i32 ) callconv(.C) void;
pub const glStencilFuncFn = fn( func: u32, ref: i32, mask: u32 ) callconv(.C) void;
pub const glStencilFuncSeparateFn = fn( face: u32, func: u32, ref: i32, mask: u32 ) callconv(.C) void;
pub const glStencilMaskFn = fn( mask: u32 ) callconv(.C) void;
pub const glStencilMaskSeparateFn = fn( face: u32, mask: u32 ) callconv(.C) void;
pub const glStencilOpFn = fn( fail: u32, zfail: u32, zpass: u32 ) callconv(.C) void;
pub const glStencilOpSeparateFn = fn( face: u32, sfail: u32, dpfail: u32, dppass: u32 ) callconv(.C) void;
pub const glTexImage2DFn = fn( target: u32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, format: u32, type: u32, pixels: ?*const anyopaque ) callconv(.C) void;
pub const glTexParameterfFn = fn( target: u32, pname: u32, param: f32 ) callconv(.C) void;
pub const glTexParameterfvFn = fn( target: u32, pname: u32, params: [*c]const f32 ) callconv(.C) void;
pub const glTexParameteriFn = fn( target: u32, pname: u32, param: i32 ) callconv(.C) void;
pub const glTexParameterivFn = fn( target: u32, pname: u32, params: [*c]const i32 ) callconv(.C) void;
pub const glTexSubImage2DFn = fn( target: u32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: u32, type: u32, pixels: ?*const anyopaque ) callconv(.C) void;
pub const glUniform1fFn = fn( location: i32, v0: f32 ) callconv(.C) void;
pub const glUniform1fvFn = fn( location: i32, count: i32, value: [*c]const f32 ) callconv(.C) void;
pub const glUniform1iFn = fn( location: i32, v0: i32 ) callconv(.C) void;
pub const glUniform1ivFn = fn( location: i32, count: i32, value: [*c]const i32 ) callconv(.C) void;
pub const glUniform2fFn = fn( location: i32, v0: f32, v1: f32 ) callconv(.C) void;
pub const glUniform2fvFn = fn( location: i32, count: i32, value: [*c]const f32 ) callconv(.C) void;
pub const glUniform2iFn = fn( location: i32, v0: i32, v1: i32 ) callconv(.C) void;
pub const glUniform2ivFn = fn( location: i32, count: i32, value: [*c]const i32 ) callconv(.C) void;
pub const glUniform3fFn = fn( location: i32, v0: f32, v1: f32, v2: f32 ) callconv(.C) void;
pub const glUniform3fvFn = fn( location: i32, count: i32, value: [*c]const f32 ) callconv(.C) void;
pub const glUniform3iFn = fn( location: i32, v0: i32, v1: i32, v2: i32 ) callconv(.C) void;
pub const glUniform3ivFn = fn( location: i32, count: i32, value: [*c]const i32 ) callconv(.C) void;
pub const glUniform4fFn = fn( location: i32, v0: f32, v1: f32, v2: f32, v3: f32 ) callconv(.C) void;
pub const glUniform4fvFn = fn( location: i32, count: i32, value: [*c]const f32 ) callconv(.C) void;
pub const glUniform4iFn = fn( location: i32, v0: i32, v1: i32, v2: i32, v3: i32 ) callconv(.C) void;
pub const glUniform4ivFn = fn( location: i32, count: i32, value: [*c]const i32 ) callconv(.C) void;
pub const glUniformMatrix2fvFn = fn( location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glUniformMatrix3fvFn = fn( location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glUniformMatrix4fvFn = fn( location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glUseProgramFn = fn( program: u32 ) callconv(.C) void;
pub const glValidateProgramFn = fn( program: u32 ) callconv(.C) void;
pub const glVertexAttrib1fFn = fn( index: u32, x: f32 ) callconv(.C) void;
pub const glVertexAttrib1fvFn = fn( index: u32, v: [*c]const f32 ) callconv(.C) void;
pub const glVertexAttrib2fFn = fn( index: u32, x: f32, y: f32 ) callconv(.C) void;
pub const glVertexAttrib2fvFn = fn( index: u32, v: [*c]const f32 ) callconv(.C) void;
pub const glVertexAttrib3fFn = fn( index: u32, x: f32, y: f32, z: f32 ) callconv(.C) void;
pub const glVertexAttrib3fvFn = fn( index: u32, v: [*c]const f32 ) callconv(.C) void;
pub const glVertexAttrib4fFn = fn( index: u32, x: f32, y: f32, z: f32, w: f32 ) callconv(.C) void;
pub const glVertexAttrib4fvFn = fn( index: u32, v: [*c]const f32 ) callconv(.C) void;
pub const glVertexAttribPointerFn = fn( index: u32, size: i32, type: u32, normalized: bool, stride: i32, pointer: ?*const anyopaque ) callconv(.C) void;
pub const glViewportFn = fn( x: i32, y: i32, width: i32, height: i32 ) callconv(.C) void;
pub const glReadBufferFn = fn( src: u32 ) callconv(.C) void;
pub const glDrawRangeElementsFn = fn( mode: u32, start: u32, end: u32, count: i32, type: u32, indices: ?*const anyopaque ) callconv(.C) void;
pub const glTexImage3DFn = fn( target: u32, level: i32, internalformat: i32, width: i32, height: i32, depth: i32, border: i32, format: u32, type: u32, pixels: ?*const anyopaque ) callconv(.C) void;
pub const glTexSubImage3DFn = fn( target: u32, level: i32, xoffset: i32, yoffset: i32, zoffset: i32, width: i32, height: i32, depth: i32, format: u32, type: u32, pixels: ?*const anyopaque ) callconv(.C) void;
pub const glCopyTexSubImage3DFn = fn( target: u32, level: i32, xoffset: i32, yoffset: i32, zoffset: i32, x: i32, y: i32, width: i32, height: i32 ) callconv(.C) void;
pub const glCompressedTexImage3DFn = fn( target: u32, level: i32, internalformat: u32, width: i32, height: i32, depth: i32, border: i32, imageSize: i32, data: ?*const anyopaque ) callconv(.C) void;
pub const glCompressedTexSubImage3DFn = fn( target: u32, level: i32, xoffset: i32, yoffset: i32, zoffset: i32, width: i32, height: i32, depth: i32, format: u32, imageSize: i32, data: ?*const anyopaque ) callconv(.C) void;
pub const glGenQueriesFn = fn( n: i32, ids: [*c]u32 ) callconv(.C) void;
pub const glDeleteQueriesFn = fn( n: i32, ids: [*c]const u32 ) callconv(.C) void;
pub const glIsQueryFn = fn( id: u32 ) callconv(.C) bool;
pub const glBeginQueryFn = fn( target: u32, id: u32 ) callconv(.C) void;
pub const glEndQueryFn = fn( target: u32 ) callconv(.C) void;
pub const glGetQueryivFn = fn( target: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetQueryObjectuivFn = fn( id: u32, pname: u32, params: [*c]u32 ) callconv(.C) void;
pub const glUnmapBufferFn = fn( target: u32 ) callconv(.C) bool;
pub const glGetBufferPointervFn = fn( target: u32, pname: u32, params: ?*anyopaque ) callconv(.C) void;
pub const glDrawBuffersFn = fn( n: i32, bufs: [*c]const u32 ) callconv(.C) void;
pub const glUniformMatrix2x3fvFn = fn( location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glUniformMatrix3x2fvFn = fn( location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glUniformMatrix2x4fvFn = fn( location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glUniformMatrix4x2fvFn = fn( location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glUniformMatrix3x4fvFn = fn( location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glUniformMatrix4x3fvFn = fn( location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glBlitFramebufferFn = fn( srcX0: i32, srcY0: i32, srcX1: i32, srcY1: i32, dstX0: i32, dstY0: i32, dstX1: i32, dstY1: i32, mask: u32, filter: u32 ) callconv(.C) void;
pub const glRenderbufferStorageMultisampleFn = fn( target: u32, samples: i32, internalformat: u32, width: i32, height: i32 ) callconv(.C) void;
pub const glFramebufferTextureLayerFn = fn( target: u32, attachment: u32, texture: u32, level: i32, layer: i32 ) callconv(.C) void;
pub const glMapBufferRangeFn = fn( target: u32, offset: isize, length: isize, access: u32 ) callconv(.C) void;
pub const glFlushMappedBufferRangeFn = fn( target: u32, offset: isize, length: isize ) callconv(.C) void;
pub const glBindVertexArrayFn = fn( array: u32 ) callconv(.C) void;
pub const glDeleteVertexArraysFn = fn( n: i32, arrays: [*c]const u32 ) callconv(.C) void;
pub const glGenVertexArraysFn = fn( n: i32, arrays: [*c]u32 ) callconv(.C) void;
pub const glIsVertexArrayFn = fn( array: u32 ) callconv(.C) bool;
pub const glGetIntegeri_vFn = fn( target: u32, index: u32, data: [*c]i32 ) callconv(.C) void;
pub const glBeginTransformFeedbackFn = fn( primitiveMode: u32 ) callconv(.C) void;
pub const glEndTransformFeedbackFn = fn(  ) callconv(.C) void;
pub const glBindBufferRangeFn = fn( target: u32, index: u32, buffer: u32, offset: isize, size: isize ) callconv(.C) void;
pub const glBindBufferBaseFn = fn( target: u32, index: u32, buffer: u32 ) callconv(.C) void;
pub const glTransformFeedbackVaryingsFn = fn( program: u32, count: i32, varyings: [*c]const [*:0]const u8, bufferMode: u32 ) callconv(.C) void;
pub const glGetTransformFeedbackVaryingFn = fn( program: u32, index: u32, bufSize: i32, length: [*c]i32, size: [*c]i32, type: [*c]u32, name: [*c]u8 ) callconv(.C) void;
pub const glVertexAttribIPointerFn = fn( index: u32, size: i32, type: u32, stride: i32, pointer: ?*const anyopaque ) callconv(.C) void;
pub const glGetVertexAttribIivFn = fn( index: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetVertexAttribIuivFn = fn( index: u32, pname: u32, params: [*c]u32 ) callconv(.C) void;
pub const glVertexAttribI4iFn = fn( index: u32, x: i32, y: i32, z: i32, w: i32 ) callconv(.C) void;
pub const glVertexAttribI4uiFn = fn( index: u32, x: u32, y: u32, z: u32, w: u32 ) callconv(.C) void;
pub const glVertexAttribI4ivFn = fn( index: u32, v: [*c]const i32 ) callconv(.C) void;
pub const glVertexAttribI4uivFn = fn( index: u32, v: [*c]const u32 ) callconv(.C) void;
pub const glGetUniformuivFn = fn( program: u32, location: i32, params: [*c]u32 ) callconv(.C) void;
pub const glGetFragDataLocationFn = fn( program: u32, name: [*:0]const u8 ) callconv(.C) i32;
pub const glUniform1uiFn = fn( location: i32, v0: u32 ) callconv(.C) void;
pub const glUniform2uiFn = fn( location: i32, v0: u32, v1: u32 ) callconv(.C) void;
pub const glUniform3uiFn = fn( location: i32, v0: u32, v1: u32, v2: u32 ) callconv(.C) void;
pub const glUniform4uiFn = fn( location: i32, v0: u32, v1: u32, v2: u32, v3: u32 ) callconv(.C) void;
pub const glUniform1uivFn = fn( location: i32, count: i32, value: [*c]const u32 ) callconv(.C) void;
pub const glUniform2uivFn = fn( location: i32, count: i32, value: [*c]const u32 ) callconv(.C) void;
pub const glUniform3uivFn = fn( location: i32, count: i32, value: [*c]const u32 ) callconv(.C) void;
pub const glUniform4uivFn = fn( location: i32, count: i32, value: [*c]const u32 ) callconv(.C) void;
pub const glClearBufferivFn = fn( buffer: u32, drawbuffer: i32, value: [*c]const i32 ) callconv(.C) void;
pub const glClearBufferuivFn = fn( buffer: u32, drawbuffer: i32, value: [*c]const u32 ) callconv(.C) void;
pub const glClearBufferfvFn = fn( buffer: u32, drawbuffer: i32, value: [*c]const f32 ) callconv(.C) void;
pub const glClearBufferfiFn = fn( buffer: u32, drawbuffer: i32, depth: f32, stencil: i32 ) callconv(.C) void;
pub const glGetStringiFn = fn( name: u32, index: u32 ) callconv(.C) u8;
pub const glCopyBufferSubDataFn = fn( readTarget: u32, writeTarget: u32, readOffset: isize, writeOffset: isize, size: isize ) callconv(.C) void;
pub const glGetUniformIndicesFn = fn( program: u32, uniformCount: i32, uniformNames: [*c]const [*:0]const u8, uniformIndices: [*c]u32 ) callconv(.C) void;
pub const glGetActiveUniformsivFn = fn( program: u32, uniformCount: i32, uniformIndices: [*c]const u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetUniformBlockIndexFn = fn( program: u32, uniformBlockName: [*:0]const u8 ) callconv(.C) u32;
pub const glGetActiveUniformBlockivFn = fn( program: u32, uniformBlockIndex: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetActiveUniformBlockNameFn = fn( program: u32, uniformBlockIndex: u32, bufSize: i32, length: [*c]i32, uniformBlockName: [*c]u8 ) callconv(.C) void;
pub const glUniformBlockBindingFn = fn( program: u32, uniformBlockIndex: u32, uniformBlockBinding: u32 ) callconv(.C) void;
pub const glDrawArraysInstancedFn = fn( mode: u32, first: i32, count: i32, instancecount: i32 ) callconv(.C) void;
pub const glDrawElementsInstancedFn = fn( mode: u32, count: i32, type: u32, indices: ?*const anyopaque, instancecount: i32 ) callconv(.C) void;
pub const glFenceSyncFn = fn( condition: u32, flags: u32 ) callconv(.C) Sync;
pub const glIsSyncFn = fn( sync: Sync ) callconv(.C) bool;
pub const glDeleteSyncFn = fn( sync: Sync ) callconv(.C) void;
pub const glClientWaitSyncFn = fn( sync: Sync, flags: u32, timeout: u64 ) callconv(.C) u32;
pub const glWaitSyncFn = fn( sync: Sync, flags: u32, timeout: u64 ) callconv(.C) void;
pub const glGetInteger64vFn = fn( pname: u32, data: [*c]i64 ) callconv(.C) void;
pub const glGetSyncivFn = fn( sync: Sync, pname: u32, count: i32, length: [*c]i32, values: [*c]i32 ) callconv(.C) void;
pub const glGetInteger64i_vFn = fn( target: u32, index: u32, data: [*c]i64 ) callconv(.C) void;
pub const glGetBufferParameteri64vFn = fn( target: u32, pname: u32, params: [*c]i64 ) callconv(.C) void;
pub const glGenSamplersFn = fn( count: i32, samplers: [*c]u32 ) callconv(.C) void;
pub const glDeleteSamplersFn = fn( count: i32, samplers: [*c]const u32 ) callconv(.C) void;
pub const glIsSamplerFn = fn( sampler: u32 ) callconv(.C) bool;
pub const glBindSamplerFn = fn( unit: u32, sampler: u32 ) callconv(.C) void;
pub const glSamplerParameteriFn = fn( sampler: u32, pname: u32, param: i32 ) callconv(.C) void;
pub const glSamplerParameterivFn = fn( sampler: u32, pname: u32, param: [*c]const i32 ) callconv(.C) void;
pub const glSamplerParameterfFn = fn( sampler: u32, pname: u32, param: f32 ) callconv(.C) void;
pub const glSamplerParameterfvFn = fn( sampler: u32, pname: u32, param: [*c]const f32 ) callconv(.C) void;
pub const glGetSamplerParameterivFn = fn( sampler: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetSamplerParameterfvFn = fn( sampler: u32, pname: u32, params: [*c]f32 ) callconv(.C) void;
pub const glVertexAttribDivisorFn = fn( index: u32, divisor: u32 ) callconv(.C) void;
pub const glBindTransformFeedbackFn = fn( target: u32, id: u32 ) callconv(.C) void;
pub const glDeleteTransformFeedbacksFn = fn( n: i32, ids: [*c]const u32 ) callconv(.C) void;
pub const glGenTransformFeedbacksFn = fn( n: i32, ids: [*c]u32 ) callconv(.C) void;
pub const glIsTransformFeedbackFn = fn( id: u32 ) callconv(.C) bool;
pub const glPauseTransformFeedbackFn = fn(  ) callconv(.C) void;
pub const glResumeTransformFeedbackFn = fn(  ) callconv(.C) void;
pub const glGetProgramBinaryFn = fn( program: u32, bufSize: i32, length: [*c]i32, binaryFormat: [*c]u32, binary: ?*anyopaque ) callconv(.C) void;
pub const glProgramBinaryFn = fn( program: u32, binaryFormat: u32, binary: ?*const anyopaque, length: i32 ) callconv(.C) void;
pub const glProgramParameteriFn = fn( program: u32, pname: u32, value: i32 ) callconv(.C) void;
pub const glInvalidateFramebufferFn = fn( target: u32, numAttachments: i32, attachments: [*c]const u32 ) callconv(.C) void;
pub const glInvalidateSubFramebufferFn = fn( target: u32, numAttachments: i32, attachments: [*c]const u32, x: i32, y: i32, width: i32, height: i32 ) callconv(.C) void;
pub const glTexStorage2DFn = fn( target: u32, levels: i32, internalformat: u32, width: i32, height: i32 ) callconv(.C) void;
pub const glTexStorage3DFn = fn( target: u32, levels: i32, internalformat: u32, width: i32, height: i32, depth: i32 ) callconv(.C) void;
pub const glGetInternalformativFn = fn( target: u32, internalformat: u32, pname: u32, count: i32, params: [*c]i32 ) callconv(.C) void;
pub const glDispatchComputeFn = fn( num_groups_x: u32, num_groups_y: u32, num_groups_z: u32 ) callconv(.C) void;
pub const glDispatchComputeIndirectFn = fn( indirect: isize ) callconv(.C) void;
pub const glDrawArraysIndirectFn = fn( mode: u32, indirect: ?*const anyopaque ) callconv(.C) void;
pub const glDrawElementsIndirectFn = fn( mode: u32, type: u32, indirect: ?*const anyopaque ) callconv(.C) void;
pub const glFramebufferParameteriFn = fn( target: u32, pname: u32, param: i32 ) callconv(.C) void;
pub const glGetFramebufferParameterivFn = fn( target: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetProgramInterfaceivFn = fn( program: u32, programInterface: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetProgramResourceIndexFn = fn( program: u32, programInterface: u32, name: [*:0]const u8 ) callconv(.C) u32;
pub const glGetProgramResourceNameFn = fn( program: u32, programInterface: u32, index: u32, bufSize: i32, length: [*c]i32, name: [*c]u8 ) callconv(.C) void;
pub const glGetProgramResourceivFn = fn( program: u32, programInterface: u32, index: u32, propCount: i32, props: [*c]const u32, count: i32, length: [*c]i32, params: [*c]i32 ) callconv(.C) void;
pub const glGetProgramResourceLocationFn = fn( program: u32, programInterface: u32, name: [*:0]const u8 ) callconv(.C) i32;
pub const glUseProgramStagesFn = fn( pipeline: u32, stages: u32, program: u32 ) callconv(.C) void;
pub const glActiveShaderProgramFn = fn( pipeline: u32, program: u32 ) callconv(.C) void;
pub const glCreateShaderProgramvFn = fn( type: u32, count: i32, strings: [*c]const [*:0]const u8 ) callconv(.C) u32;
pub const glBindProgramPipelineFn = fn( pipeline: u32 ) callconv(.C) void;
pub const glDeleteProgramPipelinesFn = fn( n: i32, pipelines: [*c]const u32 ) callconv(.C) void;
pub const glGenProgramPipelinesFn = fn( n: i32, pipelines: [*c]u32 ) callconv(.C) void;
pub const glIsProgramPipelineFn = fn( pipeline: u32 ) callconv(.C) bool;
pub const glGetProgramPipelineivFn = fn( pipeline: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glProgramUniform1iFn = fn( program: u32, location: i32, v0: i32 ) callconv(.C) void;
pub const glProgramUniform2iFn = fn( program: u32, location: i32, v0: i32, v1: i32 ) callconv(.C) void;
pub const glProgramUniform3iFn = fn( program: u32, location: i32, v0: i32, v1: i32, v2: i32 ) callconv(.C) void;
pub const glProgramUniform4iFn = fn( program: u32, location: i32, v0: i32, v1: i32, v2: i32, v3: i32 ) callconv(.C) void;
pub const glProgramUniform1uiFn = fn( program: u32, location: i32, v0: u32 ) callconv(.C) void;
pub const glProgramUniform2uiFn = fn( program: u32, location: i32, v0: u32, v1: u32 ) callconv(.C) void;
pub const glProgramUniform3uiFn = fn( program: u32, location: i32, v0: u32, v1: u32, v2: u32 ) callconv(.C) void;
pub const glProgramUniform4uiFn = fn( program: u32, location: i32, v0: u32, v1: u32, v2: u32, v3: u32 ) callconv(.C) void;
pub const glProgramUniform1fFn = fn( program: u32, location: i32, v0: f32 ) callconv(.C) void;
pub const glProgramUniform2fFn = fn( program: u32, location: i32, v0: f32, v1: f32 ) callconv(.C) void;
pub const glProgramUniform3fFn = fn( program: u32, location: i32, v0: f32, v1: f32, v2: f32 ) callconv(.C) void;
pub const glProgramUniform4fFn = fn( program: u32, location: i32, v0: f32, v1: f32, v2: f32, v3: f32 ) callconv(.C) void;
pub const glProgramUniform1ivFn = fn( program: u32, location: i32, count: i32, value: [*c]const i32 ) callconv(.C) void;
pub const glProgramUniform2ivFn = fn( program: u32, location: i32, count: i32, value: [*c]const i32 ) callconv(.C) void;
pub const glProgramUniform3ivFn = fn( program: u32, location: i32, count: i32, value: [*c]const i32 ) callconv(.C) void;
pub const glProgramUniform4ivFn = fn( program: u32, location: i32, count: i32, value: [*c]const i32 ) callconv(.C) void;
pub const glProgramUniform1uivFn = fn( program: u32, location: i32, count: i32, value: [*c]const u32 ) callconv(.C) void;
pub const glProgramUniform2uivFn = fn( program: u32, location: i32, count: i32, value: [*c]const u32 ) callconv(.C) void;
pub const glProgramUniform3uivFn = fn( program: u32, location: i32, count: i32, value: [*c]const u32 ) callconv(.C) void;
pub const glProgramUniform4uivFn = fn( program: u32, location: i32, count: i32, value: [*c]const u32 ) callconv(.C) void;
pub const glProgramUniform1fvFn = fn( program: u32, location: i32, count: i32, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniform2fvFn = fn( program: u32, location: i32, count: i32, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniform3fvFn = fn( program: u32, location: i32, count: i32, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniform4fvFn = fn( program: u32, location: i32, count: i32, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniformMatrix2fvFn = fn( program: u32, location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniformMatrix3fvFn = fn( program: u32, location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniformMatrix4fvFn = fn( program: u32, location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniformMatrix2x3fvFn = fn( program: u32, location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniformMatrix3x2fvFn = fn( program: u32, location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniformMatrix2x4fvFn = fn( program: u32, location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniformMatrix4x2fvFn = fn( program: u32, location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniformMatrix3x4fvFn = fn( program: u32, location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glProgramUniformMatrix4x3fvFn = fn( program: u32, location: i32, count: i32, transpose: bool, value: [*c]const f32 ) callconv(.C) void;
pub const glValidateProgramPipelineFn = fn( pipeline: u32 ) callconv(.C) void;
pub const glGetProgramPipelineInfoLogFn = fn( pipeline: u32, bufSize: i32, length: [*c]i32, infoLog: [*c]u8 ) callconv(.C) void;
pub const glBindImageTextureFn = fn( unit: u32, texture: u32, level: i32, layered: bool, layer: i32, access: u32, format: u32 ) callconv(.C) void;
pub const glGetBooleani_vFn = fn( target: u32, index: u32, data: [*c]bool ) callconv(.C) void;
pub const glMemoryBarrierFn = fn( barriers: u32 ) callconv(.C) void;
pub const glMemoryBarrierByRegionFn = fn( barriers: u32 ) callconv(.C) void;
pub const glTexStorage2DMultisampleFn = fn( target: u32, samples: i32, internalformat: u32, width: i32, height: i32, fixedsamplelocations: bool ) callconv(.C) void;
pub const glGetMultisamplefvFn = fn( pname: u32, index: u32, val: [*c]f32 ) callconv(.C) void;
pub const glSampleMaskiFn = fn( maskNumber: u32, mask: u32 ) callconv(.C) void;
pub const glGetTexLevelParameterivFn = fn( target: u32, level: i32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetTexLevelParameterfvFn = fn( target: u32, level: i32, pname: u32, params: [*c]f32 ) callconv(.C) void;
pub const glBindVertexBufferFn = fn( bindingindex: u32, buffer: u32, offset: isize, stride: i32 ) callconv(.C) void;
pub const glVertexAttribFormatFn = fn( attribindex: u32, size: i32, type: u32, normalized: bool, relativeoffset: u32 ) callconv(.C) void;
pub const glVertexAttribIFormatFn = fn( attribindex: u32, size: i32, type: u32, relativeoffset: u32 ) callconv(.C) void;
pub const glVertexAttribBindingFn = fn( attribindex: u32, bindingindex: u32 ) callconv(.C) void;
pub const glVertexBindingDivisorFn = fn( bindingindex: u32, divisor: u32 ) callconv(.C) void;
pub const glBlendBarrierFn = fn(  ) callconv(.C) void;
pub const glCopyImageSubDataFn = fn( srcName: u32, srcTarget: u32, srcLevel: i32, srcX: i32, srcY: i32, srcZ: i32, dstName: u32, dstTarget: u32, dstLevel: i32, dstX: i32, dstY: i32, dstZ: i32, srcWidth: i32, srcHeight: i32, srcDepth: i32 ) callconv(.C) void;
pub const glDebugMessageControlFn = fn( source: u32, type: u32, severity: u32, count: i32, ids: [*c]const u32, enabled: bool ) callconv(.C) void;
pub const glDebugMessageInsertFn = fn( source: u32, type: u32, id: u32, severity: u32, length: i32, buf: [*:0]const u8 ) callconv(.C) void;
pub const glDebugMessageCallbackFn = fn( callback: DebugFn, userParam: ?*const anyopaque ) callconv(.C) void;
pub const glGetDebugMessageLogFn = fn( count: u32, bufSize: i32, sources: [*c]u32, types: [*c]u32, ids: [*c]u32, severities: [*c]u32, lengths: [*c]i32, messageLog: [*c]u8 ) callconv(.C) u32;
pub const glPushDebugGroupFn = fn( source: u32, id: u32, length: i32, message: [*:0]const u8 ) callconv(.C) void;
pub const glPopDebugGroupFn = fn(  ) callconv(.C) void;
pub const glObjectLabelFn = fn( identifier: u32, name: u32, length: i32, label: [*:0]const u8 ) callconv(.C) void;
pub const glGetObjectLabelFn = fn( identifier: u32, name: u32, bufSize: i32, length: [*c]i32, label: [*c]u8 ) callconv(.C) void;
pub const glObjectPtrLabelFn = fn( ptr: ?*const anyopaque, length: i32, label: [*:0]const u8 ) callconv(.C) void;
pub const glGetObjectPtrLabelFn = fn( ptr: ?*const anyopaque, bufSize: i32, length: [*c]i32, label: [*c]u8 ) callconv(.C) void;
pub const glGetPointervFn = fn( pname: u32, params: ?*anyopaque ) callconv(.C) void;
pub const glEnableiFn = fn( target: u32, index: u32 ) callconv(.C) void;
pub const glDisableiFn = fn( target: u32, index: u32 ) callconv(.C) void;
pub const glBlendEquationiFn = fn( buf: u32, mode: u32 ) callconv(.C) void;
pub const glBlendEquationSeparateiFn = fn( buf: u32, modeRGB: u32, modeAlpha: u32 ) callconv(.C) void;
pub const glBlendFunciFn = fn( buf: u32, src: u32, dst: u32 ) callconv(.C) void;
pub const glBlendFuncSeparateiFn = fn( buf: u32, srcRGB: u32, dstRGB: u32, srcAlpha: u32, dstAlpha: u32 ) callconv(.C) void;
pub const glColorMaskiFn = fn( index: u32, r: bool, g: bool, b: bool, a: bool ) callconv(.C) void;
pub const glIsEnablediFn = fn( target: u32, index: u32 ) callconv(.C) bool;
pub const glDrawElementsBaseVertexFn = fn( mode: u32, count: i32, type: u32, indices: ?*const anyopaque, basevertex: i32 ) callconv(.C) void;
pub const glDrawRangeElementsBaseVertexFn = fn( mode: u32, start: u32, end: u32, count: i32, type: u32, indices: ?*const anyopaque, basevertex: i32 ) callconv(.C) void;
pub const glDrawElementsInstancedBaseVertexFn = fn( mode: u32, count: i32, type: u32, indices: ?*const anyopaque, instancecount: i32, basevertex: i32 ) callconv(.C) void;
pub const glFramebufferTextureFn = fn( target: u32, attachment: u32, texture: u32, level: i32 ) callconv(.C) void;
pub const glPrimitiveBoundingBoxFn = fn( minX: f32, minY: f32, minZ: f32, minW: f32, maxX: f32, maxY: f32, maxZ: f32, maxW: f32 ) callconv(.C) void;
pub const glGetGraphicsResetStatusFn = fn(  ) callconv(.C) u32;
pub const glReadnPixelsFn = fn( x: i32, y: i32, width: i32, height: i32, format: u32, type: u32, bufSize: i32, data: ?*anyopaque ) callconv(.C) void;
pub const glGetnUniformfvFn = fn( program: u32, location: i32, bufSize: i32, params: [*c]f32 ) callconv(.C) void;
pub const glGetnUniformivFn = fn( program: u32, location: i32, bufSize: i32, params: [*c]i32 ) callconv(.C) void;
pub const glGetnUniformuivFn = fn( program: u32, location: i32, bufSize: i32, params: [*c]u32 ) callconv(.C) void;
pub const glMinSampleShadingFn = fn( value: f32 ) callconv(.C) void;
pub const glPatchParameteriFn = fn( pname: u32, value: i32 ) callconv(.C) void;
pub const glTexParameterIivFn = fn( target: u32, pname: u32, params: [*c]const i32 ) callconv(.C) void;
pub const glTexParameterIuivFn = fn( target: u32, pname: u32, params: [*c]const u32 ) callconv(.C) void;
pub const glGetTexParameterIivFn = fn( target: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetTexParameterIuivFn = fn( target: u32, pname: u32, params: [*c]u32 ) callconv(.C) void;
pub const glSamplerParameterIivFn = fn( sampler: u32, pname: u32, param: [*c]const i32 ) callconv(.C) void;
pub const glSamplerParameterIuivFn = fn( sampler: u32, pname: u32, param: [*c]const u32 ) callconv(.C) void;
pub const glGetSamplerParameterIivFn = fn( sampler: u32, pname: u32, params: [*c]i32 ) callconv(.C) void;
pub const glGetSamplerParameterIuivFn = fn( sampler: u32, pname: u32, params: [*c]u32 ) callconv(.C) void;
pub const glTexBufferFn = fn( target: u32, internalformat: u32, buffer: u32 ) callconv(.C) void;
pub const glTexBufferRangeFn = fn( target: u32, internalformat: u32, buffer: u32, offset: isize, size: isize ) callconv(.C) void;
pub const glTexStorage3DMultisampleFn = fn( target: u32, samples: i32, internalformat: u32, width: i32, height: i32, depth: i32, fixedsamplelocations: bool ) callconv(.C) void;
