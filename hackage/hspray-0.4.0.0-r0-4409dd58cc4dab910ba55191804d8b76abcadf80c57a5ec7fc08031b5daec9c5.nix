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
      identifier = { name = "hspray"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2022-2024 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/hspray#readme";
      url = "";
      synopsis = "Multivariate polynomials and fractions of multivariate polynomials.";
      description = "Manipulation of multivariate polynomials over a commutative ring and fractions of multivariate polynomials over a commutative field, Gröbner bases, resultant and subresultants, and greatest common divisor. It is possible to deal with multivariate polynomials whose coefficients are fractions of multivariate polynomials, and they can be interpreted as parametric polynomials with symbolic parameters.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
        ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hspray" or (errorHandler.buildDepError "hspray"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."hspray" or (errorHandler.buildDepError "hspray"))
          ];
          buildable = true;
        };
      };
    };
  }