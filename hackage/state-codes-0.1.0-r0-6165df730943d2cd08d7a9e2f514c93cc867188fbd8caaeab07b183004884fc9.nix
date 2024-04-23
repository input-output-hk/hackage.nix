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
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "state-codes"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2017 Agustin Camino";
      maintainer = "agustin.camino@gmail.com";
      author = "Agustin Camino";
      homepage = "https://github.com/acamino/state-codes#README";
      url = "";
      synopsis = "ISO 3166-2:US state codes and i18n names";
      description = "This package provides the ISO 3166-2:US state codes and i18n names";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
        ];
        buildable = true;
      };
      tests = {
        "state-codes-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."state-codes" or (errorHandler.buildDepError "state-codes"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }