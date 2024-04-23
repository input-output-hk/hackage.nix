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
    flags = { dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "miniterion"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "8c6794b6@gmail.com";
      author = "8c6794b6";
      homepage = "https://github.com/8c6794b6/miniterion";
      url = "";
      synopsis = "Simple and lightweight benchmark utilities";
      description = "Simple benchmarking utilities with API subset of\n<https://hackage.haskell.org/package/criterion criterion> (and also a\nsubset of <https://hackage.haskell.org/package/gauge gauge> and\n<https://hackage.haskell.org/package/tasty-bench tasty-bench>).\n\nThe goal of this package is to provide simple and lightweight\nbenchmark utilities with less amount of codes and dependency\npackages. For robust and feature rich benchmarking utility, use the\nother packages mentioned above.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "miniterion-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miniterion" or (errorHandler.buildDepError "miniterion"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "fibo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miniterion" or (errorHandler.buildDepError "miniterion"))
          ];
          buildable = true;
        };
      };
    };
  }