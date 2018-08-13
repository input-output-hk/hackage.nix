{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      usenativewindowslibraries = true;
      useglxgetprocaddress = true;
      usegles2 = true;
      osandroid = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "OpenGLRaw";
        version = "3.2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2009-2016 Sven Panne";
      maintainer = "Sven Panne <svenpanne@gmail.com>, Jason Dagit <dagitj@gmail.com>";
      author = "Sven Panne";
      homepage = "http://www.haskell.org/haskellwiki/Opengl";
      url = "";
      synopsis = "A raw binding for the OpenGL graphics system";
      description = "OpenGLRaw is a raw Haskell binding for the OpenGL 4.5 graphics system and\nlots of OpenGL extensions. It is basically a 1:1 mapping of OpenGL's C API,\nintended as a basis for a nicer interface. OpenGLRaw offers access to all\nnecessary functions, tokens and types plus a general facility for loading\nextension entries. The module hierarchy closely mirrors the naming structure\nof the OpenGL extensions, making it easy to find the right module to import.\nAll API entries are loaded dynamically, so no special C header files are\nneeded for building this package. If an API entry is not found at runtime, a\nuserError is thrown.\n\nOpenGL is the industry's most widely used and supported 2D and 3D graphics\napplication programming interface (API), incorporating a broad set of\nrendering, texture mapping, special effects, and other powerful visualization\nfunctions. For more information about OpenGL and its various extensions,\nplease see <http://www.opengl.org/>\nand <http://www.opengl.org/registry/>.";
      buildType = "Simple";
    };
    components = {
      "OpenGLRaw" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.fixed)
          (hsPkgs.half)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
        libs = if system.isWindows && _flags.usenativewindowslibraries
          then [ (pkgs."opengl32") ]
          else pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optionals (!system.isIos) (if _flags.osandroid
            then if _flags.usegles2
              then [ (pkgs."GLESv2") ]
              else [ (pkgs."GLESv3") ]
            else [ (pkgs."GL") ]));
        frameworks = pkgs.lib.optionals (!(system.isWindows && _flags.usenativewindowslibraries)) (if system.isOsx
          then [ (pkgs."OpenGL") ]
          else pkgs.lib.optional (system.isIos) (pkgs."OpenGLES"));
      };
    };
  }