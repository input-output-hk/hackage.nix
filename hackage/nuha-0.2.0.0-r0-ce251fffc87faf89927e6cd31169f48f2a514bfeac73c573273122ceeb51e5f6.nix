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
      identifier = { name = "nuha"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Johannes Kropp 2020";
      maintainer = "jodak932@gmail.com";
      author = "Johannes Kropp";
      homepage = "";
      url = "";
      synopsis = "Multidimensional arrays, Linear algebra";
      description = "\nNuha is a library for linear algebra based on multidimensional arrays (holors).\n\nThe goals of Nuha are:\n\n* to be user friendly\n\n* to be lightweight with few dependencies\n\n* to be fast (although there haven't been many benchmarks yet)\n\nIf there's time in the future, it is planned to implement algorithms of numerical analysis, e.g. solve linear systems, determinant, inverse, svd, eigenvalues, matrix decompositions ...\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "nuha-test" = {
          depends = [
            (hsPkgs."nuha" or (errorHandler.buildDepError "nuha"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }