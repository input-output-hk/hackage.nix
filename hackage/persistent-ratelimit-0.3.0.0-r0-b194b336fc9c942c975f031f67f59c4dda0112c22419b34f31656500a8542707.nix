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
      identifier = { name = "persistent-ratelimit"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "dev@jamesparker.me";
      author = "James Parker";
      homepage = "https://github.com/jprider63/persistent-ratelimit";
      url = "";
      synopsis = "A library for rate limiting activities with a persistent backend. ";
      description = "This packages provides a library for rate limiting activities with a persistent backend. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          ];
        buildable = true;
        };
      };
    }