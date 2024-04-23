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
      specVersion = "1.12";
      identifier = {
        name = "welford-online-mean-variance";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2023 Manuel Schneckenreither";
      maintainer = "manuel.schnecki@gmail.com";
      author = "Manuel Schneckenreither";
      homepage = "https://github.com/schnecki/welford-online-mean-variance#readme";
      url = "";
      synopsis = "Online computation of mean and variance using the Welford algorithm.";
      description = "Please see the README on GitHub at <https://github.com/githubuser/welford-online-mean-variance#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "welford-online-mean-variance-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."welford-online-mean-variance" or (errorHandler.buildDepError "welford-online-mean-variance"))
          ];
          buildable = true;
        };
      };
    };
  }