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
      identifier = { name = "Monadoro"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2019 Patryk Kocielnik";
      maintainer = "patryk@kocielnik.pl";
      author = "Patryk Kocielnik";
      homepage = "https://github.com/gitlab.com/kocielnik#readme";
      url = "";
      synopsis = "A minimalistic CLI Pomodoro timer, based on a library of the same purpose.";
      description = "Please see the README on GitLab at <https://gitlab.com/kocielnik/monadoro#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
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
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
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
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }