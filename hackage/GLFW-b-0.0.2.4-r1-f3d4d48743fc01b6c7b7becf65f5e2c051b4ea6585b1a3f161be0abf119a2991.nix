{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "GLFW-b"; version = "0.0.2.4"; };
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
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = if system.isLinux
          then [
            (pkgs."GL" or (errorHandler.sysDepError "GL"))
            (pkgs."GLU" or (errorHandler.sysDepError "GLU"))
            (pkgs."X11" or (errorHandler.sysDepError "X11"))
            (pkgs."Xrandr" or (errorHandler.sysDepError "Xrandr"))
          ]
          else if system.isOsx
            then [ (pkgs."glfw" or (errorHandler.sysDepError "glfw")) ]
            else pkgs.lib.optional (system.isWindows) (pkgs."opengl32" or (errorHandler.sysDepError "opengl32"));
        frameworks = pkgs.lib.optionals (!system.isLinux) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."AGL" or (errorHandler.sysDepError "AGL"))
          (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa"))
          (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL"))
        ]);
        buildable = true;
      };
    };
  }