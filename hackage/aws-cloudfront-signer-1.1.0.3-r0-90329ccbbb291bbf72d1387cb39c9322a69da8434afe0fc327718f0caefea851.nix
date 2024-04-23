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
    flags = { time15 = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "aws-cloudfront-signer"; version = "1.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "http://github.com/iconnect/aws-cloudfront-signer";
      url = "";
      synopsis = "For signing AWS CloudFront HTTP URL requests";
      description = "Provides functions for reading in the signing keys from file and making up time-limited, signed URLS for accessing AWS CloudFront-hosted files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
        ] ++ (if flags.time15
          then [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]
          else [
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ]);
        buildable = true;
      };
    };
  }