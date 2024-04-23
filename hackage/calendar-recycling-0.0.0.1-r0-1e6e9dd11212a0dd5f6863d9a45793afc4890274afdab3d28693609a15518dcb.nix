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
      identifier = { name = "calendar-recycling"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/calendar-recycling";
      url = "";
      synopsis = "List years with the same calendars";
      description = "Generate a partial HTML document grouping years\nby the pattern of the calender.\nThe program respects the starting weekday of a year\nand the existence of a leap day,\nbut it ignores the date of the Easter festival.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "calendar-recycling" = {
          depends = [
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }