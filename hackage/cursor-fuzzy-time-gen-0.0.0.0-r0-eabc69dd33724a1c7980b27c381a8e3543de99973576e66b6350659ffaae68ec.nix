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
      specVersion = "1.12";
      identifier = { name = "cursor-fuzzy-time-gen"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2020 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/fuzzy-time";
      url = "";
      synopsis = "";
      description = "Generators for the fuzzy time cursors";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cursor-fuzzy-time" or (buildDepError "cursor-fuzzy-time"))
          (hsPkgs."cursor-gen" or (buildDepError "cursor-gen"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."fuzzy-time" or (buildDepError "fuzzy-time"))
          (hsPkgs."fuzzy-time-gen" or (buildDepError "fuzzy-time-gen"))
          (hsPkgs."genvalidity" or (buildDepError "genvalidity"))
          (hsPkgs."genvalidity-time" or (buildDepError "genvalidity-time"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "cursor-fuzzy-time-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cursor-fuzzy-time" or (buildDepError "cursor-fuzzy-time"))
            (hsPkgs."cursor-fuzzy-time-gen" or (buildDepError "cursor-fuzzy-time-gen"))
            (hsPkgs."fuzzy-time" or (buildDepError "fuzzy-time"))
            (hsPkgs."genvalidity" or (buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-optics" or (buildDepError "genvalidity-hspec-optics"))
            (hsPkgs."genvalidity-time" or (buildDepError "genvalidity-time"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "cursor-fuzzy-time-bench" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."cursor-fuzzy-time" or (buildDepError "cursor-fuzzy-time"))
            (hsPkgs."cursor-fuzzy-time-gen" or (buildDepError "cursor-fuzzy-time-gen"))
            (hsPkgs."genvalidity-criterion" or (buildDepError "genvalidity-criterion"))
            ];
          buildable = true;
          };
        };
      };
    }