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
      identifier = { name = "usb-hid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paul.mic.bennett@gmail.com";
      author = "Paul Bennett";
      homepage = "https://github.com/mapinguari/usb-hid";
      url = "";
      synopsis = "Parser and request Library for USB HIDs";
      description = "This library allows for class specific requests to be made and for responses to be parsed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."usb" or (errorHandler.buildDepError "usb"))
          ];
        buildable = true;
        };
      };
    }