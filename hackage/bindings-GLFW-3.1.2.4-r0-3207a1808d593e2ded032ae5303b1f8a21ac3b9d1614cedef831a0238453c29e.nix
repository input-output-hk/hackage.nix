let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      system-glfw = false;
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
      identifier = { name = "bindings-GLFW"; version = "3.1.2.4"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bindings-DSL" or (buildDepError "bindings-DSL"))
          ];
        libs = (pkgs.lib).optionals (!flags.system-glfw) ((pkgs.lib).optionals (system.isLinux || system.isFreebsd) [
          (pkgs."GL" or (sysDepError "GL"))
          (pkgs."X11" or (sysDepError "X11"))
          (pkgs."Xi" or (sysDepError "Xi"))
          (pkgs."Xrandr" or (sysDepError "Xrandr"))
          (pkgs."Xxf86vm" or (sysDepError "Xxf86vm"))
          (pkgs."Xcursor" or (sysDepError "Xcursor"))
          (pkgs."Xinerama" or (sysDepError "Xinerama"))
          (pkgs."pthread" or (sysDepError "pthread"))
          ] ++ (pkgs.lib).optionals (system.isWindows) [
          (pkgs."opengl32" or (sysDepError "opengl32"))
          (pkgs."Gdi32" or (sysDepError "Gdi32"))
          ]);
        frameworks = (pkgs.lib).optionals (!flags.system-glfw) ((pkgs.lib).optionals (system.isOsx) [
          (pkgs."AGL" or (sysDepError "AGL"))
          (pkgs."Cocoa" or (sysDepError "Cocoa"))
          (pkgs."OpenGL" or (sysDepError "OpenGL"))
          (pkgs."IOKit" or (sysDepError "IOKit"))
          (pkgs."CoreFoundation" or (sysDepError "CoreFoundation"))
          (pkgs."CoreVideo" or (sysDepError "CoreVideo"))
          ]);
        pkgconfig = (pkgs.lib).optional (flags.system-glfw) (pkgconfPkgs."glfw3" or (pkgConfDepError "glfw3"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."bindings-GLFW" or (buildDepError "bindings-GLFW"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          frameworks = [
            (pkgs."AGL" or (sysDepError "AGL"))
            (pkgs."Cocoa" or (sysDepError "Cocoa"))
            (pkgs."OpenGL" or (sysDepError "OpenGL"))
            (pkgs."IOKit" or (sysDepError "IOKit"))
            (pkgs."CoreFoundation" or (sysDepError "CoreFoundation"))
            (pkgs."CoreVideo" or (sysDepError "CoreVideo"))
            ];
          };
        };
      };
    }