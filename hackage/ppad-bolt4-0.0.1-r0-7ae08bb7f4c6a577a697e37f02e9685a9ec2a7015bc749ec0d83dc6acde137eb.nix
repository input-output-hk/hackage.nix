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
      identifier = { name = "ppad-bolt4"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@ppad.tech";
      author = "Jared Tobin";
      homepage = "";
      url = "";
      synopsis = "BOLT4 (onion routing) for Lightning Network";
      description = "A pure Haskell implementation of BOLT4 (onion routing) from\nthe Lightning Network protocol specification.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ppad-aead" or (errorHandler.buildDepError "ppad-aead"))
          (hsPkgs."ppad-chacha" or (errorHandler.buildDepError "ppad-chacha"))
          (hsPkgs."ppad-fixed" or (errorHandler.buildDepError "ppad-fixed"))
          (hsPkgs."ppad-secp256k1" or (errorHandler.buildDepError "ppad-secp256k1"))
          (hsPkgs."ppad-sha256" or (errorHandler.buildDepError "ppad-sha256"))
        ];
        buildable = true;
      };
      tests = {
        "bolt4-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ppad-base16" or (errorHandler.buildDepError "ppad-base16"))
            (hsPkgs."ppad-bolt4" or (errorHandler.buildDepError "ppad-bolt4"))
            (hsPkgs."ppad-secp256k1" or (errorHandler.buildDepError "ppad-secp256k1"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bolt4-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ppad-bolt4" or (errorHandler.buildDepError "ppad-bolt4"))
          ];
          buildable = true;
        };
        "bolt4-weigh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ppad-bolt4" or (errorHandler.buildDepError "ppad-bolt4"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
          buildable = true;
        };
      };
    };
  }