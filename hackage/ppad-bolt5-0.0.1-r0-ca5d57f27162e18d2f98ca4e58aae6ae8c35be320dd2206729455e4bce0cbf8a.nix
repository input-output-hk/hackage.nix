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
      specVersion = "3.0";
      identifier = { name = "ppad-bolt5"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@ppad.tech";
      author = "Jared Tobin";
      homepage = "";
      url = "";
      synopsis = "On-chain transaction handling per BOLT #5";
      description = "On-chain transaction handling, per\n[BOLT #5](https://github.com/lightning/bolts/blob/master/05-onchain.md).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ppad-bolt3" or (errorHandler.buildDepError "ppad-bolt3"))
          (hsPkgs."ppad-sha256" or (errorHandler.buildDepError "ppad-sha256"))
          (hsPkgs."ppad-tx" or (errorHandler.buildDepError "ppad-tx"))
        ];
        buildable = true;
      };
      tests = {
        "bolt5-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ppad-bolt3" or (errorHandler.buildDepError "ppad-bolt3"))
            (hsPkgs."ppad-bolt5" or (errorHandler.buildDepError "ppad-bolt5"))
            (hsPkgs."ppad-tx" or (errorHandler.buildDepError "ppad-tx"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bolt5-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ppad-bolt3" or (errorHandler.buildDepError "ppad-bolt3"))
            (hsPkgs."ppad-bolt5" or (errorHandler.buildDepError "ppad-bolt5"))
            (hsPkgs."ppad-tx" or (errorHandler.buildDepError "ppad-tx"))
          ];
          buildable = true;
        };
        "bolt5-weigh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ppad-bolt3" or (errorHandler.buildDepError "ppad-bolt3"))
            (hsPkgs."ppad-bolt5" or (errorHandler.buildDepError "ppad-bolt5"))
            (hsPkgs."ppad-tx" or (errorHandler.buildDepError "ppad-tx"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
          buildable = true;
        };
      };
    };
  }