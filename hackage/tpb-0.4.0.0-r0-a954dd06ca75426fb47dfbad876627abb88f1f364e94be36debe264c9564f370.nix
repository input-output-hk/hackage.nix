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
      identifier = { name = "tpb"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Jacob Thomas Errington 2017";
      maintainer = "hackage@mail.jerrington.me";
      author = "Jacob Thomas Errington";
      homepage = "";
      url = "";
      synopsis = "Applications for interacting with the Pushbullet API";
      description = "This package provides two programs, tpb and pb-notify, for interacting with\nthe Pushbullet API. The former is primarily used for sending SMS whereas the\nlatter is used for showing desktop notifications when SMS are received.\ntpb additionally supports a number of additional management commands for\ncreating and deleting resources inside PushBullet.\npb-notify is responsible for integration with PushBullet's Universal\nCopy/Paste feature. It maintains an internal buffer that is kept in sync with\nPushBullet's clipboard. This buffer can be accessed via pb-notify's built-in\nHTTP server. A POST request to the /clip endpoint of the server will in turn\nsend the necessary request to PushBullet to set the clipboard of all\nconnected devices.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tpb" = {
          depends = [
            (hsPkgs."pushbullet-types" or (errorHandler.buildDepError "pushbullet-types"))
            (hsPkgs."servant-pushbullet-client" or (errorHandler.buildDepError "servant-pushbullet-client"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            ];
          buildable = true;
          };
        "pb-notify" = {
          depends = [
            (hsPkgs."pushbullet-types" or (errorHandler.buildDepError "pushbullet-types"))
            (hsPkgs."servant-pushbullet-client" or (errorHandler.buildDepError "servant-pushbullet-client"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."libnotify" or (errorHandler.buildDepError "libnotify"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wuss" or (errorHandler.buildDepError "wuss"))
            ];
          buildable = true;
          };
        };
      };
    }