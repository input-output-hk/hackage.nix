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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "DRBG"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Deterministic random bit generator (aka RNG, PRNG) based\nHMACs, Hashes, and Ciphers.";
      description = "Cryptographically secure RNGs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."cryptohash-cryptoapi" or (errorHandler.buildDepError "cryptohash-cryptoapi"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."cipher-aes128" or (errorHandler.buildDepError "cipher-aes128"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          ];
        buildable = true;
        };
      exes = {
        "drbg_test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cryptohash-cryptoapi" or (errorHandler.buildDepError "cryptohash-cryptoapi"))
            (hsPkgs."crypto-api-tests" or (errorHandler.buildDepError "crypto-api-tests"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }