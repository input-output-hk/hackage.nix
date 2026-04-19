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
      identifier = { name = "ppad-bolt8"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@ppad.tech";
      author = "Jared Tobin";
      homepage = "";
      url = "";
      synopsis = "Encrypted and authenticated transport per BOLT #8";
      description = "Encrypted and authenticated transport, per\n[BOLT #8](https://github.com/lightning/bolts/blob/master/08-transport.md).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ppad-aead" or (errorHandler.buildDepError "ppad-aead"))
          (hsPkgs."ppad-hkdf" or (errorHandler.buildDepError "ppad-hkdf"))
          (hsPkgs."ppad-secp256k1" or (errorHandler.buildDepError "ppad-secp256k1"))
          (hsPkgs."ppad-sha256" or (errorHandler.buildDepError "ppad-sha256"))
        ];
        buildable = true;
      };
      tests = {
        "bolt8-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ppad-base16" or (errorHandler.buildDepError "ppad-base16"))
            (hsPkgs."ppad-bolt8" or (errorHandler.buildDepError "ppad-bolt8"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bolt8-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ppad-bolt8" or (errorHandler.buildDepError "ppad-bolt8"))
          ];
          buildable = true;
        };
        "bolt8-weigh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ppad-bolt8" or (errorHandler.buildDepError "ppad-bolt8"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
          buildable = true;
        };
      };
    };
  }