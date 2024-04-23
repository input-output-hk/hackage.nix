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
      identifier = { name = "mqtt-hs"; version = "0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014 Lukas Braun";
      maintainer = "Lukas Braun <koomi+mqtt@hackerspace-bamberg.de>";
      author = "Lukas Braun <koomi+mqtt@hackerspace-bamberg.de>";
      homepage = "github.com/k00mi/mqtt-hs";
      url = "";
      synopsis = "A MQTT client library.";
      description = "A library to communicate with MQTT brokers.\nSee the @Network.MQTT@ module for documentation and a small example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
        ];
        buildable = true;
      };
    };
  }