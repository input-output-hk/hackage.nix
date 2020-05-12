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
      identifier = { name = "chatty-text"; version = "0.6.2.1"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "hackage@enumeration.eu";
      author = "Enum Cohrs";
      homepage = "http://doomanddarkness.eu/pub/chatty";
      url = "";
      synopsis = "Provides some classes and types for dealing with text, using the fundaments of Chatty.";
      description = "Provides some classes and types for dealing with text, using the fundaments of Chatty. Mainly two parser monads and a typesetter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chatty" or (errorHandler.buildDepError "chatty"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }