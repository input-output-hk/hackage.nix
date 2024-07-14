{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jackpolynomials"; version = "1.4.7.0"; };
      license = "GPL-3.0-only";
      copyright = "2022-2024 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/jackpolynomials#readme";
      url = "";
      synopsis = "Jack, zonal, Schur, and other symmetric polynomials";
      description = "This library can compute Jack polynomials, zonal polynomials, Schur polynomials, flagged Schur polynomials, factorial Schur polynomials, t-Schur polynomials, Hall-Littlewood polynomials, Macdonald polynomials, Kostka-Foulkes polynomials, Kostka-Macdonald polynomials, and Hall polynomials. It also provides some functions to compute Kostka numbers and to enumerate Gelfand-Tsetlin patterns.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."hspray" or (errorHandler.buildDepError "hspray"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."jackpolynomials" or (errorHandler.buildDepError "jackpolynomials"))
            (hsPkgs."hspray" or (errorHandler.buildDepError "hspray"))
            (hsPkgs."hypergeomatrix" or (errorHandler.buildDepError "hypergeomatrix"))
            (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miniterion" or (errorHandler.buildDepError "miniterion"))
            (hsPkgs."jackpolynomials" or (errorHandler.buildDepError "jackpolynomials"))
            (hsPkgs."hspray" or (errorHandler.buildDepError "hspray"))
          ];
          buildable = true;
        };
      };
    };
  }