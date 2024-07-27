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
    flags = { macosxusechdir = true; macosxusemenubar = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-GLFW"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to GLFW OpenGL library";
      description = "Low-level bindings to <http://www.glfw.org/ GLFW>, an open source,\nmulti-platform library for creating windows with OpenGL contexts and managing\ninput and events.\n\nThe binding is to\n<http://www.glfw.org/Version-3.0.1-released.html GLFW 3.0.1, released 2013-06-17>.\n\n/These bindings are too low-level for normal use./ For higher-level bindings,\nsee <http://hackage.haskell.org/package/GLFW-b GLFW-b>.\n\nIf you've used GLFW before, you were probably using 2.7.x. There are some\nsignificant differences in 3.0.x. Please see the\n<http://www.glfw.org/docs/3.0/moving.html transition guide>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        libs = pkgs.lib.optionals (system.isLinux || system.isFreebsd) [
          (pkgs."GL" or (errorHandler.sysDepError "GL"))
          (pkgs."X11" or (errorHandler.sysDepError "X11"))
          (pkgs."Xi" or (errorHandler.sysDepError "Xi"))
          (pkgs."Xrandr" or (errorHandler.sysDepError "Xrandr"))
          (pkgs."Xxf86vm" or (errorHandler.sysDepError "Xxf86vm"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
        ] ++ pkgs.lib.optionals (system.isWindows) [
          (pkgs."opengl32" or (errorHandler.sysDepError "opengl32"))
          (pkgs."Gdi32" or (errorHandler.sysDepError "Gdi32"))
        ];
        frameworks = pkgs.lib.optionals (system.isOsx) [
          (pkgs."AGL" or (errorHandler.sysDepError "AGL"))
          (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa"))
          (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL"))
          (pkgs."IOKit" or (errorHandler.sysDepError "IOKit"))
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bindings-GLFW" or (errorHandler.buildDepError "bindings-GLFW"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }