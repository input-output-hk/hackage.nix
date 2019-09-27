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
      identifier = { name = "radixtree"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Mike Ledger";
      maintainer = "mike@quasimal.com";
      author = "Mike Ledger";
      homepage = "https://gitlab.com/transportengineering/radixtree";
      url = "";
      synopsis = "";
      description = "A prefix-tree parsing library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."parsers" or (buildDepError "parsers"))
          (hsPkgs."store" or (buildDepError "store"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "radixtree-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."radixtree" or (buildDepError "radixtree"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "radixtree-parsing" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."radixtree" or (buildDepError "radixtree"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."QuasiText" or (buildDepError "QuasiText"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "radixtree-search" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."radixtree" or (buildDepError "radixtree"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."QuasiText" or (buildDepError "QuasiText"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }