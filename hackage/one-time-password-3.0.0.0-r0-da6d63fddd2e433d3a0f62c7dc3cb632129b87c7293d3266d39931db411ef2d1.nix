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
      specVersion = "3.4";
      identifier = { name = "one-time-password"; version = "3.0.0.0"; };
      license = "MIT";
      copyright = "(c) 2023 The Haskell Cryptography Group";
      maintainer = "The Haskell Cryptography Group contributors";
      author = "Hécate Moonlight";
      homepage = "https://github.com/haskell-cryptography/one-time-password";
      url = "";
      synopsis = "HMAC-Based and Time-Based One-Time Passwords";
      description = "Implements HMAC-Based One-Time Password Algorithm as\ndefined in RFC 4226 and Time-Based One-Time Password\nAlgorithm as defined in RFC 6238.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."sel" or (errorHandler.buildDepError "sel"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
        ];
        buildable = true;
      };
      exes = {
        "one-time-password" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
            (hsPkgs."one-time-password" or (errorHandler.buildDepError "one-time-password"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."sel" or (errorHandler.buildDepError "sel"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
            (hsPkgs."torsor" or (errorHandler.buildDepError "torsor"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."base32" or (errorHandler.buildDepError "base32"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."one-time-password" or (errorHandler.buildDepError "one-time-password"))
            (hsPkgs."sel" or (errorHandler.buildDepError "sel"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
            (hsPkgs."torsor" or (errorHandler.buildDepError "torsor"))
          ];
          buildable = true;
        };
      };
    };
  }