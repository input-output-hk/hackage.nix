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
      specVersion = "1.6";
      identifier = { name = "weather-api"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "peter@standalone.su";
      author = "Peter";
      homepage = "https://github.com/cvb/hs-weather-api.git";
      url = "";
      synopsis = "Weather api implemented in haskell";
      description = "This library implement generic api for retrieving weather\nby http, and has google weather api as example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }