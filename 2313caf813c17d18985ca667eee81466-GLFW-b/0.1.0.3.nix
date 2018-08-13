{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "GLFW-b";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "GLFW bindings";
      description = "Bindings to GLFW, a free, open source, multi-platform library for\ncreating OpenGL contexts and managing input, including keyboard,\nmouse, joystick and time.\n\nGLFW-b works on Windows, Mac OS X, and many Unix-like operating\nsystems.\n\nPlease see README.md\n(<http://github.com/bsl/GLFW-b/blob/master/README.md>) for\ninformation about how these bindings differ from the ones in the\nGLFW package (<http://hackage.haskell.org/package/GLFW>).\n\nFor more information about the library on which these bindings\nare based, please see <http://glfw.sourceforge.net>.";
      buildType = "Custom";
    };
    components = {
      "GLFW-b" = {
        depends  = [ (hsPkgs.base) ];
        libs = if system.isLinux || system.isFreebsd
          then [
            (pkgs.GL)
            (pkgs.GLU)
            (pkgs.X11)
            (pkgs.Xrandr)
          ]
          else if system.isOsx
            then [ (pkgs.glfw) ]
            else pkgs.lib.optional (system.isWindows) (pkgs.opengl32);
      };
    };
  }