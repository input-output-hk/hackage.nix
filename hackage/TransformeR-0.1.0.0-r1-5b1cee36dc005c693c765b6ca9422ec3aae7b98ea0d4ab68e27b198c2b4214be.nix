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
      identifier = { name = "TransformeR"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Yisu Remy Wang";
      maintainer = "remywang@protonmail.com";
      author = "Yisu Remy Wang";
      homepage = "https://github.com/remysucre/TransformeR#readme";
      url = "";
      synopsis = "eDSL in R for Safe Variable Transformarion";
      description = "Arbitrary data transformations that work at the level of single individual data\ncan be safely applied before applying a differentially private data analysis if\nan adversary only gets to observe the result of the differentially private analysis.\nThe current version of the PSI prototype offers support for writing variable\ntransformations as R programs that can be run on the data before running\nthe other private statistics. Arbitrary R programs can allow for leakage of\ninformation beyond the output, and \"side-channel attacks\" where an adversary\nobserves this additional leakage and thereby undermines the privacy guarantees.\nTransformeR is a subset of the R language that can serve\nas a domain specifc language useful to write the needed data transformations and\nat the same time be more maneageable for preventing security weaknesses\nand side-channel attacks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          ];
        buildable = true;
        };
      exes = {
        "TransformeR-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."TransformeR" or (buildDepError "TransformeR"))
            ];
          buildable = true;
          };
        };
      tests = {
        "TransformeR-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."TransformeR" or (buildDepError "TransformeR"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }