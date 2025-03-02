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
    flags = { golden-tests = false; golden-tests-exe = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cardano-crypto"; version = "1.3.0"; };
      license = "MIT";
      copyright = "2016-2021 IOHK";
      maintainer = "contact@typed.io";
      author = "Vincent Hanquez";
      homepage = "https://github.com/input-output-hk/cardano-crypto#readme";
      url = "";
      synopsis = "Cryptography primitives for cardano";
      description = "This package provide cryptographic primitives in use in the Cardano network, mostly related to legacy Byron era.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
        ];
        buildable = true;
      };
      exes = {
        "golden-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
            (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."cardano-crypto" or (errorHandler.buildDepError "cardano-crypto"))
          ] ++ pkgs.lib.optional (flags.golden-tests-exe) (hsPkgs."inspector" or (errorHandler.buildDepError "inspector"));
          buildable = if flags.golden-tests-exe then true else false;
        };
      };
      tests = {
        "cardano-crypto-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."cardano-crypto" or (errorHandler.buildDepError "cardano-crypto"))
            (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
            (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
          ];
          buildable = true;
        };
        "cardano-crypto-golden-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
            (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."cardano-crypto" or (errorHandler.buildDepError "cardano-crypto"))
          ] ++ pkgs.lib.optional (flags.golden-tests) (hsPkgs."inspector" or (errorHandler.buildDepError "inspector"));
          buildable = if flags.golden-tests then true else false;
        };
      };
      benchmarks = {
        "cardano-crypto-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."cardano-crypto" or (errorHandler.buildDepError "cardano-crypto"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
          ];
          buildable = true;
        };
      };
    };
  }