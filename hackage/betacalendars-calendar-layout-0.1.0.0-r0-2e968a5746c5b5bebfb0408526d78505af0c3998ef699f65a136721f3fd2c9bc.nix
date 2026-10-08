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
      specVersion = "2.4";
      identifier = {
        name = "betacalendars-calendar-layout";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "betamateopedersen@gmail.com";
      author = "Mateo Pedersen";
      homepage = "https://www.betacalendars.com/";
      url = "";
      synopsis = "Pure calendar-grid topology and physical print-layout algebra";
      description = "A deterministic Haskell library for Gregorian month topology, all seven\nweek origins, natural and fixed six-week grids, undated planning grids,\npaper geometry, and structured validation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "example-basic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."betacalendars-calendar-layout" or (errorHandler.buildDepError "betacalendars-calendar-layout"))
          ];
          buildable = true;
        };
        "example-paper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."betacalendars-calendar-layout" or (errorHandler.buildDepError "betacalendars-calendar-layout"))
          ];
          buildable = true;
        };
        "example-blank" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."betacalendars-calendar-layout" or (errorHandler.buildDepError "betacalendars-calendar-layout"))
          ];
          buildable = true;
        };
      };
      tests = {
        "calendar-layout-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."betacalendars-calendar-layout" or (errorHandler.buildDepError "betacalendars-calendar-layout"))
          ];
          buildable = true;
        };
      };
    };
  }