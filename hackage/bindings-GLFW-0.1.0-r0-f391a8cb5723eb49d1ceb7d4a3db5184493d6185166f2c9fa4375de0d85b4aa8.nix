{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { macosxusechdir = true; macosxusemenubar = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-GLFW"; version = "0.1.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          ];
        libs = (pkgs.lib).optionals (system.isLinux || system.isFreebsd) [
          (pkgs."GL" or ((hsPkgs.pkgs-errors).sysDepError "GL"))
          (pkgs."X11" or ((hsPkgs.pkgs-errors).sysDepError "X11"))
          (pkgs."Xi" or ((hsPkgs.pkgs-errors).sysDepError "Xi"))
          (pkgs."Xrandr" or ((hsPkgs.pkgs-errors).sysDepError "Xrandr"))
          (pkgs."Xxf86vm" or ((hsPkgs.pkgs-errors).sysDepError "Xxf86vm"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ] ++ (pkgs.lib).optionals (system.isWindows) [
          (pkgs."opengl32" or ((hsPkgs.pkgs-errors).sysDepError "opengl32"))
          (pkgs."Gdi32" or ((hsPkgs.pkgs-errors).sysDepError "Gdi32"))
          ];
        frameworks = (pkgs.lib).optionals (system.isOsx) [
          (pkgs."AGL" or ((hsPkgs.pkgs-errors).sysDepError "AGL"))
          (pkgs."Cocoa" or ((hsPkgs.pkgs-errors).sysDepError "Cocoa"))
          (pkgs."OpenGL" or ((hsPkgs.pkgs-errors).sysDepError "OpenGL"))
          (pkgs."IOKit" or ((hsPkgs.pkgs-errors).sysDepError "IOKit"))
          (pkgs."CoreFoundation" or ((hsPkgs.pkgs-errors).sysDepError "CoreFoundation"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bindings-GLFW" or ((hsPkgs.pkgs-errors).buildDepError "bindings-GLFW"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }