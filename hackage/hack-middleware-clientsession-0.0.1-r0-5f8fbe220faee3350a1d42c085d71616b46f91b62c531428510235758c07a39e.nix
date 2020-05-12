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
      identifier = {
        name = "hack-middleware-clientsession";
        version = "0.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/hack-middleware-clientsession/tree/master";
      url = "";
      synopsis = "Middleware for easily keeping session data in client cookies.";
      description = "Uses the clientsession package for automatic encryption,\nhashing, expiring and renewing of sessions stored in\ncookies on the client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."predicates" or (errorHandler.buildDepError "predicates"))
          (hsPkgs."web-encodings" or (errorHandler.buildDepError "web-encodings"))
          ];
        buildable = true;
        };
      };
    }