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
      specVersion = "1.8";
      identifier = { name = "hutton"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak <taylor@fausak.me>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A program for the button on Reddit.";
      description = "Hutton is a program for <https://www.reddit.com/r/thebutton the button> on\nReddit.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hutton" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."wuss" or (errorHandler.buildDepError "wuss"))
            ];
          buildable = true;
          };
        };
      };
    }