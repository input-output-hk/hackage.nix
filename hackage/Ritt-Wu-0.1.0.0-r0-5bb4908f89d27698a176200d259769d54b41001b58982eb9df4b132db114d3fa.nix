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
      identifier = { name = "Ritt-Wu"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Jose Seraquive";
      maintainer = "jose.seraquive@gmail.com";
      author = "Jose Luis Seraquive Cuenca";
      homepage = "https://github.com/githubuser/Ritt-Wu#readme";
      url = "";
      synopsis = "Parallel implementation of Ritt-Wu's algorithm.";
      description = "Please see the README on GitHub at <https://github.com/xxAVOGADROxx/Ritt-Wu/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."algebra" or (buildDepError "algebra"))
          (hsPkgs."criterion" or (buildDepError "criterion"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."massiv" or (buildDepError "massiv"))
          (hsPkgs."scheduler" or (buildDepError "scheduler"))
          (hsPkgs."sscript" or (buildDepError "sscript"))
          ];
        buildable = true;
        };
      exes = {
        "Ritt-Wu-exe" = {
          depends = [
            (hsPkgs."Ritt-Wu" or (buildDepError "Ritt-Wu"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."massiv" or (buildDepError "massiv"))
            (hsPkgs."scheduler" or (buildDepError "scheduler"))
            (hsPkgs."sscript" or (buildDepError "sscript"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Ritt-Wu-test" = {
          depends = [
            (hsPkgs."Ritt-Wu" or (buildDepError "Ritt-Wu"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."scheduler" or (buildDepError "scheduler"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "Ritt-Wu-benchmark" = {
          depends = [
            (hsPkgs."Ritt-Wu" or (buildDepError "Ritt-Wu"))
            (hsPkgs."algebra" or (buildDepError "algebra"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."massiv" or (buildDepError "massiv"))
            (hsPkgs."scheduler" or (buildDepError "scheduler"))
            (hsPkgs."sscript" or (buildDepError "sscript"))
            ];
          buildable = true;
          };
        };
      };
    }