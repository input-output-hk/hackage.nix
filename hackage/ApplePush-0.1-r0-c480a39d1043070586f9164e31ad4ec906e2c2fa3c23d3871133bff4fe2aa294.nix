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
      identifier = { name = "ApplePush"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Moos <chris@tech9computers.com>";
      author = "Chris Moos <chris@tech9computers.com>";
      homepage = "";
      url = "";
      synopsis = "Library for Apple Push Notification Service";
      description = "This library provides an interface to send notifications with the Apple Push Notification Service.\n\nNote: Your connection to Apple's Push Notification service must be secured with SSL. Currently, Haskell's support\nfor SSL is incomplete, therefore you should use an SSL tunnel to connect your application to the push service, such as                       stunnel.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
        ];
        buildable = true;
      };
      exes = {
        "applepushtest" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }