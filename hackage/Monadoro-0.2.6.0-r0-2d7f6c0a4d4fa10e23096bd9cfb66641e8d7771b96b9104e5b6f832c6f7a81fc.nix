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
      identifier = { name = "Monadoro"; version = "0.2.6.0"; };
      license = "MIT";
      copyright = "2018-2021 Patryk Kocielnik";
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
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "monadoro" = {
          depends = [
            (hsPkgs."Monadoro" or (errorHandler.buildDepError "Monadoro"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Monadoro-test" = {
          depends = [
            (hsPkgs."Monadoro" or (errorHandler.buildDepError "Monadoro"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }