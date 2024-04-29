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
      specVersion = "1.2";
      identifier = { name = "hs-captcha"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 Irene Knapp";
      maintainer = "ireneista@gmail.com";
      author = "Irene Knapp";
      homepage = "https://github.com/IreneKnapp/hs-captcha";
      url = "";
      synopsis = "Generate images suitable for use as CAPTCHAs in online web-form security.";
      description = "Generates images suitable for use as CAPTCHAs in online web-form security.  Does not\nintegrate with any web framework; simply exports a function that creates the image\nitself as a ByteString (containing a PNG), and the correct answer to the challenge as a\nString.  HS-Captcha is designed to be as simple as possible to integrate in other\nframeworks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."gd" or (errorHandler.buildDepError "gd"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }