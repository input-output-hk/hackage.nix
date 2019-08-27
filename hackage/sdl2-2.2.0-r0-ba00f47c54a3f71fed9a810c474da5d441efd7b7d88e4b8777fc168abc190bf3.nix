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
    flags = { examples = false; opengl-example = false; no-linear = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2"; version = "2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013-2017  Gabríel Arthúr Pétursson";
      maintainer = "gabriel@system.is, ollie@ocharles.org.uk";
      author = "Gabríel Arthúr Pétursson, Oliver Charles";
      homepage = "";
      url = "";
      synopsis = "Both high- and low-level bindings to the SDL library (version 2.0.4+).";
      description = "This package contains bindings to the SDL 2 library, in both high- and\nlow-level forms:\n\nThe 'SDL' namespace contains high-level bindings, where enumerations are split\ninto sum types, and we perform automatic error-checking.\n\nThe 'SDL.Raw' namespace contains an almost 1-1 translation of the C API into\nHaskell FFI calls. As such, this does not contain sum types nor error\nchecking. Thus this namespace is suitable for building your own abstraction\nover SDL, but is not recommended for day-to-day programming.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."StateVar" or (buildDepError "StateVar"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!flags.no-linear) (hsPkgs."linear" or (buildDepError "linear"));
        libs = [ (pkgs."SDL2" or (sysDepError "SDL2")) ];
        pkgconfig = [ (pkgconfPkgs."sdl2" or (pkgConfDepError "sdl2")) ];
        };
      exes = {
        "lazyfoo-lesson-01" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-02" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-03" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-04" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-05" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-07" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-08" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-09" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-10" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-11" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-12" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-13" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-14" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-15" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-17" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-18" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-19" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-20" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "lazyfoo-lesson-43" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "twinklebear-lesson-01" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "twinklebear-lesson-02" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "twinklebear-lesson-04" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "twinklebear-lesson-04a" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "twinklebear-lesson-05" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "audio-example" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "opengl-example" = {
          depends = (pkgs.lib).optionals (flags.opengl-example) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        };
      };
    }