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
      identifier = { name = "push-notify-apn"; version = "0.4.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2017-2020 Memrange UG";
      maintainer = "marc@digitallyinduced.com";
      author = "Marc Scholten";
      homepage = "https://github.com/digitallyinduced/push-notify-apn#readme";
      url = "";
      synopsis = "Send push notifications to mobile iOS devices";
      description = "push-notify-apn is a library and command line utility that can be used to send\npush notifications to mobile devices running iOS. Push notifications are small\nmessages that can be sent to apps on smart phones and tablets\nwithout the need to keep open a long lived TCP connection per app, dramatically\nreducing the power consumption in standby mode.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
          (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."crypton-x509" or (errorHandler.buildDepError "crypton-x509"))
          (hsPkgs."crypton-x509-store" or (errorHandler.buildDepError "crypton-x509-store"))
          (hsPkgs."crypton-x509-system" or (errorHandler.buildDepError "crypton-x509-system"))
        ];
        buildable = true;
      };
      exes = {
        "sendapn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."push-notify-apn" or (errorHandler.buildDepError "push-notify-apn"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "apn-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."push-notify-apn" or (errorHandler.buildDepError "push-notify-apn"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }