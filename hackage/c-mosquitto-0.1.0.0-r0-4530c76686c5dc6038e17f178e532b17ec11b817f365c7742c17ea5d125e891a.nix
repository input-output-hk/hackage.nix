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
      identifier = { name = "c-mosquitto"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017(c) Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/c-mosquitto#readme";
      url = "";
      synopsis = "Simpe mosquito MQTT binding able to work with the Amazons IoT";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."mosquitto" or (errorHandler.sysDepError "mosquitto")) ];
        buildable = true;
      };
      exes = {
        "c-mosquitto" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-mosquitto" or (errorHandler.buildDepError "c-mosquitto"))
            (hsPkgs."options" or (errorHandler.buildDepError "options"))
          ];
          buildable = true;
        };
      };
      tests = {
        "c-mosquitto-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-mosquitto" or (errorHandler.buildDepError "c-mosquitto"))
          ];
          buildable = true;
        };
      };
    };
  }