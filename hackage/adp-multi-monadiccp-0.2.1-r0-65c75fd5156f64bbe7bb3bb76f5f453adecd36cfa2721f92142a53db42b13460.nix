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
    flags = { buildbenchmark = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "adp-multi-monadiccp"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Maik Riechert, 2013";
      maintainer = "Maik Riechert";
      author = "Maik Riechert";
      homepage = "http://adp-multi.ruhoh.com";
      url = "";
      synopsis = "Subword construction in adp-multi using monadiccp";
      description = "This is an experimental subword construction algorithm\nfor the adp-multi package. It uses the constraint\nprogramming framework monadiccp with the constraint solver\nOvertonFD. It is slower than the built-in algorithm in\nadp-multi and serves research purposes.\nUse it by importing ADP.Multi.Constraint.All instead\nof ADP.Multi.Rewriting.All in your grammar files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."adp-multi" or (errorHandler.buildDepError "adp-multi"))
          (hsPkgs."monadiccp" or (errorHandler.buildDepError "monadiccp"))
        ];
        buildable = true;
      };
      exes = {
        "adp-multi-monadiccp-benchmarks" = {
          depends = pkgs.lib.optionals (!!flags.buildbenchmark) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."adp-multi" or (errorHandler.buildDepError "adp-multi"))
            (hsPkgs."monadiccp" or (errorHandler.buildDepError "monadiccp"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = if !flags.buildbenchmark then false else true;
        };
      };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."adp-multi" or (errorHandler.buildDepError "adp-multi"))
            (hsPkgs."monadiccp" or (errorHandler.buildDepError "monadiccp"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }