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
      specVersion = "3.14";
      identifier = { name = "soccer-table"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "patrick.bucher@mailbox.org";
      author = "Patrick Bucher";
      homepage = "";
      url = "";
      synopsis = "Create League Tables from Soccer Game Results";
      description = "The soccer-table program processes a directory of text files containing\nsoccer game results. This directory is given as a command line argument. Each\nof the files must contain lines of the following form:\n\n  HOME-TEAM HOME-GOALS:AWAY-GOALS AWAY-TEAM\n\nFor example:\n\n  Manchaster City 0:0 Sunderland\n  Arsenal 0:3 Fulham\n  Manchester United 1:0 Crystal Palace\n\nA league table is generated from those results and printed to the screen.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
        ];
        buildable = true;
      };
      exes = {
        "soccer-table" = {
          depends = [
            (hsPkgs."soccer-table" or (errorHandler.buildDepError "soccer-table"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
          buildable = true;
        };
      };
      tests = {
        "soccer-table-test" = {
          depends = [
            (hsPkgs."soccer-table" or (errorHandler.buildDepError "soccer-table"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }