{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      macosxusechdir = true;
      macosxusemenubar = true;
      macosxuseretina = true;
      x = true;
      wayland = false;
      mir = false;
      exposenative = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-GLFW"; version = "3.1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Schell Scivally <efsubenovex@gmail.com>,\nBrian Lewis <brian@lorf.org>,\nJavier Jaramago <jaramago.fernandez.javier@gmail.com>";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        libs = (pkgs.lib).optionals (system.isLinux || system.isFreebsd) [
          (pkgs."GL" or ((hsPkgs.pkgs-errors).sysDepError "GL"))
          (pkgs."X11" or ((hsPkgs.pkgs-errors).sysDepError "X11"))
          (pkgs."Xi" or ((hsPkgs.pkgs-errors).sysDepError "Xi"))
          (pkgs."Xrandr" or ((hsPkgs.pkgs-errors).sysDepError "Xrandr"))
          (pkgs."Xxf86vm" or ((hsPkgs.pkgs-errors).sysDepError "Xxf86vm"))
          (pkgs."Xcursor" or ((hsPkgs.pkgs-errors).sysDepError "Xcursor"))
          (pkgs."Xinerama" or ((hsPkgs.pkgs-errors).sysDepError "Xinerama"))
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
          (pkgs."CoreVideo" or ((hsPkgs.pkgs-errors).sysDepError "CoreVideo"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."bindings-GLFW" or ((hsPkgs.pkgs-errors).buildDepError "bindings-GLFW"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          frameworks = [
            (pkgs."AGL" or ((hsPkgs.pkgs-errors).sysDepError "AGL"))
            (pkgs."Cocoa" or ((hsPkgs.pkgs-errors).sysDepError "Cocoa"))
            (pkgs."OpenGL" or ((hsPkgs.pkgs-errors).sysDepError "OpenGL"))
            (pkgs."IOKit" or ((hsPkgs.pkgs-errors).sysDepError "IOKit"))
            (pkgs."CoreFoundation" or ((hsPkgs.pkgs-errors).sysDepError "CoreFoundation"))
            (pkgs."CoreVideo" or ((hsPkgs.pkgs-errors).sysDepError "CoreVideo"))
            ];
          buildable = true;
          };
        };
      };
    }