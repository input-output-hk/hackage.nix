{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "GLFW-b"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "GLFW bindings";
      description = "Bindings to GLFW, a free, open source, multi-platform library for\ncreating OpenGL contexts and managing input, including keyboard,\nmouse, joystick and time.\n\n/GLFW-b does not currently work on Mac OS X./ Sorry.\n\nPlease see README.md\n(<http://github.com/bsl/GLFW-b/blob/master/README.md>) for\ninformation about how these bindings differ from the ones in the\nGLFW package (<http://hackage.haskell.org/package/GLFW>).\n\nFor more information about the library on which these bindings\nare based, please see <http://glfw.sourceforge.net>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = if system.isLinux
          then [ (pkgs."GL") (pkgs."GLU") (pkgs."X11") (pkgs."Xrandr") ]
          else (pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optional (system.isWindows) (pkgs."opengl32"));
        frameworks = (pkgs.lib).optionals (!system.isLinux) ((pkgs.lib).optionals (system.isOsx) [
          (pkgs."AGL")
          (pkgs."Cocoa")
          (pkgs."OpenGL")
          ]);
        };
      };
    }