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
    flags = { local = false; profile = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hbayes"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2016, alpheccar ";
      maintainer = "misc@alpheccar.org";
      author = "alpheccar";
      homepage = "http://www.alpheccar.org";
      url = "";
      synopsis = "Bayesian Networks";
      description = "Algorithms for Bayesian Networks.\nIt is a very preliminary version. It has only been tested on very simple\nexamples where it worked. It should be considered as experimental and not used\nin any production work.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."gamma" or (errorHandler.buildDepError "gamma"))
        ];
        buildable = true;
      };
      tests = {
        "hbayes-Tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hbayes" or (errorHandler.buildDepError "hbayes"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."gamma" or (errorHandler.buildDepError "gamma"))
          ];
          buildable = true;
        };
      };
    };
  }