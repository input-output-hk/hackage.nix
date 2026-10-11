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
      identifier = { name = "ppad-bolt2"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@ppad.tech";
      author = "Jared Tobin";
      homepage = "";
      url = "";
      synopsis = "Peer protocol per BOLT #2";
      description = "Peer protocol, per\n[BOLT #2](https://github.com/lightning/bolts/blob/master/02-peer-protocol.md).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ppad-bolt1" or (errorHandler.buildDepError "ppad-bolt1"))
          (hsPkgs."ppad-bolt9" or (errorHandler.buildDepError "ppad-bolt9"))
          (hsPkgs."ppad-tx" or (errorHandler.buildDepError "ppad-tx"))
        ];
        buildable = true;
      };
      tests = {
        "bolt2-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ppad-base16" or (errorHandler.buildDepError "ppad-base16"))
            (hsPkgs."ppad-bolt1" or (errorHandler.buildDepError "ppad-bolt1"))
            (hsPkgs."ppad-bolt2" or (errorHandler.buildDepError "ppad-bolt2"))
            (hsPkgs."ppad-bolt9" or (errorHandler.buildDepError "ppad-bolt9"))
            (hsPkgs."ppad-tx" or (errorHandler.buildDepError "ppad-tx"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bolt2-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."ppad-bolt1" or (errorHandler.buildDepError "ppad-bolt1"))
            (hsPkgs."ppad-bolt2" or (errorHandler.buildDepError "ppad-bolt2"))
            (hsPkgs."ppad-bolt9" or (errorHandler.buildDepError "ppad-bolt9"))
            (hsPkgs."ppad-tx" or (errorHandler.buildDepError "ppad-tx"))
          ];
          buildable = true;
        };
        "bolt2-weigh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ppad-bolt1" or (errorHandler.buildDepError "ppad-bolt1"))
            (hsPkgs."ppad-bolt2" or (errorHandler.buildDepError "ppad-bolt2"))
            (hsPkgs."ppad-bolt9" or (errorHandler.buildDepError "ppad-bolt9"))
            (hsPkgs."ppad-tx" or (errorHandler.buildDepError "ppad-tx"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
          buildable = true;
        };
      };
    };
  }