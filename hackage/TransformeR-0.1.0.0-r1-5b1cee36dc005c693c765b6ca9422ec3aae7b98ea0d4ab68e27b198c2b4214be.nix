{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          ];
        buildable = true;
        };
      exes = {
        "TransformeR-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."TransformeR" or ((hsPkgs.pkgs-errors).buildDepError "TransformeR"))
            ];
          buildable = true;
          };
        };
      tests = {
        "TransformeR-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."TransformeR" or ((hsPkgs.pkgs-errors).buildDepError "TransformeR"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }