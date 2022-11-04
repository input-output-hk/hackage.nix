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
      identifier = { name = "Monadoro"; version = "0.3.5.0"; };
      license = "MIT";
      copyright = "2018-2022 Patryk Kocielnik";
      maintainer = "patryk@kocielnik.pl";
      author = "Patryk Kocielnik";
      homepage = "";
      url = "";
      synopsis = "A minimalistic CLI Pomodoro timer.";
      description = "A Pomodoro timer with two modes: single-pomodoro (default), and four-pomodoro (`--session`).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "monadoro" = {
          depends = [
            (hsPkgs."Monadoro" or (errorHandler.buildDepError "Monadoro"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Monadoro-test" = {
          depends = [
            (hsPkgs."Monadoro" or (errorHandler.buildDepError "Monadoro"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }