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
      identifier = { name = "mosquitto-hs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Ray Bhawnani";
      maintainer = "anishray@gmail.com";
      author = "Bhawnani, Ray";
      homepage = "https://github.com/anishray/mosquitto-hs#readme";
      url = "";
      synopsis = "Mosquitto client library bindings";
      description = "Low-level bindings to the Mosquitto client library. libmosquitto — MQTT version 3.1 client library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }