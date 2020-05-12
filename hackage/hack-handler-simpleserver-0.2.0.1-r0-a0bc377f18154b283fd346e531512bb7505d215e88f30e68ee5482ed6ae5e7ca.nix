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
      identifier = { name = "hack-handler-simpleserver"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/hack-handler-simpleserver/tree/master";
      url = "";
      synopsis = "A simplistic HTTP server handler for Hack.";
      description = "This should not be used in a production environment.\nHowever, it's useful for testing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."web-encodings" or (errorHandler.buildDepError "web-encodings"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          ];
        buildable = true;
        };
      };
    }