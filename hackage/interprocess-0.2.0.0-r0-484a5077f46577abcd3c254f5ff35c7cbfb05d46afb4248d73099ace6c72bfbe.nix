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
    flags = { examples = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "interprocess"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/interprocess";
      url = "";
      synopsis = "Shared memory and control structures for IPC";
      description = "Provides portable shared memory allocator and some synchronization primitives.\nCan be used for interprocess communication.\nRefer to README.md for further information.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      exes = {
        "concurrent-malloc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."interprocess" or (buildDepError "interprocess"))
            ];
          };
        "wait-qsem" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."interprocess" or (buildDepError "interprocess"))
            ];
          };
        "wait-mvar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."interprocess" or (buildDepError "interprocess"))
            ];
          };
        };
      tests = {
        "StoredMVar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."interprocess" or (buildDepError "interprocess"))
            ];
          };
        };
      };
    }