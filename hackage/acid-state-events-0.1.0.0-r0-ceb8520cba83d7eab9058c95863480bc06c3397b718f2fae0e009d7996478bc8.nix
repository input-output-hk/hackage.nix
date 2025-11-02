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
      specVersion = "1.12";
      identifier = { name = "acid-state-events"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2025 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/juspay/vira/tree/main/packages/acid-state-events";
      url = "";
      synopsis = "Generic event bus for acid-state applications";
      description = "A generic event bus implementation for acid-state applications.\nProvides publish/subscribe with event logging and replay capabilities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }