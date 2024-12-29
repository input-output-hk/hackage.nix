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
      specVersion = "1.10";
      identifier = { name = "signify-hs"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcel Fourné, 2020-2024";
      maintainer = "Marcel Fourné (haskell@marcelfourne.de)";
      author = "Marcel Fourné";
      homepage = "";
      url = "";
      synopsis = "A Haskell clone of OpenBSD signify.";
      description = "This program with its corresponding library implements most of (OpenBSD) signify. Missing are GZip-header-embedding of signatures and checksum files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."cryptohash-sha512" or (errorHandler.buildDepError "cryptohash-sha512"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."eccrypto" or (errorHandler.buildDepError "eccrypto"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      exes = {
        "signify-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."cryptohash-sha512" or (errorHandler.buildDepError "cryptohash-sha512"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."eccrypto" or (errorHandler.buildDepError "eccrypto"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."signify-hs" or (errorHandler.buildDepError "signify-hs"))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"));
          buildable = true;
        };
      };
    };
  }