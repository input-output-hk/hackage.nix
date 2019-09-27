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
      specVersion = "1.6";
      identifier = { name = "gencheck"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carette@mcmaster.ca, uszkaygj@mcmaster.ca";
      author = "Gordon J. Uszkay, Jacques Carette";
      homepage = "http://github.com/JacquesCarette/GenCheck";
      url = "http://gitbug.com/JacquesCarette/GenCheck";
      synopsis = "A testing framework inspired by QuickCheck and SmallCheck";
      description = "This framework provides functionality for testing Haskell functions\nagainst properties, similar to QuickCheck, but allowing\ndifferent test data generation strategies for different structures,\nand even within the same structure using composition strategies.\nReporting, test case scheduling and data generation modules can be\nassembled to customize the test program based on the situation.\n\nTest data generation is based on combinatorial theory\nand uses explicit enumeration of regular polynomial types,\ncombined with selection strategies to build data generators.\nGenerators can be composed or combined in parallel to create\ncomposite strategies for data sampling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."combinat" or (buildDepError "combinat"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."memoize" or (buildDepError "memoize"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."ieee754" or (buildDepError "ieee754"))
          ];
        buildable = true;
        };
      };
    }