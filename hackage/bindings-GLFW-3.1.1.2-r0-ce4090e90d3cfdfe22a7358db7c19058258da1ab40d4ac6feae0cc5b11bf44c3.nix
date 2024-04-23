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
    flags = {
      macosxusechdir = true;
      macosxusemenubar = true;
      macosxuseretina = true;
      x = true;
      wayland = false;
      mir = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-GLFW"; version = "3.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to GLFW OpenGL library";
      description = "Low-level bindings to GLFW (<http://www.glfw.org/>), an open source,\nmulti-platform library for creating windows with OpenGL contexts and managing\ninput and events.\n\nThe binding is to GLFW 3.1, released 2015-01-18\n(<http://www.glfw.org/Version-3.1-released.html>\n<http://www.glfw.org/changelog.html>).\n\n/These bindings are too low-level for normal use./ For higher-level bindings,\nsee GLFW-b (<http://hackage.haskell.org/package/GLFW-b>).\n\nIf you've used GLFW before, you were probably using 2.7.x. There are some\nsignificant differences in 3.x.x. Please see the transition guide\n(<http://www.glfw.org/docs/3.1/moving.html>).";
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
          (pkgs."Xcursor" or (errorHandler.sysDepError "Xcursor"))
          (pkgs."Xinerama" or (errorHandler.sysDepError "Xinerama"))
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
          (pkgs."CoreVideo" or (errorHandler.sysDepError "CoreVideo"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."bindings-GLFW" or (errorHandler.buildDepError "bindings-GLFW"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          frameworks = [
            (pkgs."AGL" or (errorHandler.sysDepError "AGL"))
            (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa"))
            (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL"))
            (pkgs."IOKit" or (errorHandler.sysDepError "IOKit"))
            (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
            (pkgs."CoreVideo" or (errorHandler.sysDepError "CoreVideo"))
          ];
          buildable = true;
        };
      };
    };
  }