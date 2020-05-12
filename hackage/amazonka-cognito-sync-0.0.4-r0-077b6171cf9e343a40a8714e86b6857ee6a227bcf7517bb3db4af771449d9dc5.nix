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
      identifier = { name = "amazonka-cognito-sync"; version = "0.0.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Cognito Sync SDK.";
      description = "Amazon Cognito Sync provides an AWS service and client library that enable\ncross-device syncing of application-related user data. High-level client\nlibraries are available for both iOS and Android. You can use these libraries\nto persist data locally so that it's available even if the device is offline.\nDeveloper credentials don't need to be stored on the mobile device to access\nthe service. You can use Amazon Cognito to obtain a normalized user ID and\ncredentials. User data is persisted in a dataset that can store up to 1 MB of\nkey-value pairs, and you can have up to 20 datasets per user identity.\n\n/See:/ <http://docs.aws.amazon.com/cognitosync/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }