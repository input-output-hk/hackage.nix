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
    flags = { openssh = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "crypto-pubkey-openssh"; version = "0.2.0"; };
      license = "MIT";
      copyright = "Fedor Gogolev <knsd@knsd.net>";
      maintainer = "Fedor Gogolev <knsd@knsd.net>";
      author = "Fedor Gogolev <knsd@knsd.net>\nMaxim Mitroshin <rocco66max@gmail.com>\nThomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "https://github.com/knsd/crypto-pubkey-openssh";
      url = "";
      synopsis = "OpenSSH public keys parser";
      description = "OpenSSH public keys parser";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."asn1-data" or (errorHandler.buildDepError "asn1-data"))
          ];
        buildable = true;
        };
      tests = {
        "crypto-pubkey-openssh-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
            (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
            (hsPkgs."asn1-data" or (errorHandler.buildDepError "asn1-data"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }