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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gore-and-ash-demo"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/Teaspot-Studio/gore-and-ash-demo";
      url = "";
      synopsis = "Demonstration game for Gore&Ash game engine";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gore-and-ash-demo-client" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exception-transformers" or (buildDepError "exception-transformers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or (buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-actor" or (buildDepError "gore-and-ash-actor"))
            (hsPkgs."gore-and-ash-logging" or (buildDepError "gore-and-ash-logging"))
            (hsPkgs."gore-and-ash-network" or (buildDepError "gore-and-ash-network"))
            (hsPkgs."gore-and-ash-sdl" or (buildDepError "gore-and-ash-sdl"))
            (hsPkgs."gore-and-ash-sync" or (buildDepError "gore-and-ash-sync"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "gore-and-ash-demo-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exception-transformers" or (buildDepError "exception-transformers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."gore-and-ash" or (buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-actor" or (buildDepError "gore-and-ash-actor"))
            (hsPkgs."gore-and-ash-logging" or (buildDepError "gore-and-ash-logging"))
            (hsPkgs."gore-and-ash-network" or (buildDepError "gore-and-ash-network"))
            (hsPkgs."gore-and-ash-sync" or (buildDepError "gore-and-ash-sync"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      };
    }