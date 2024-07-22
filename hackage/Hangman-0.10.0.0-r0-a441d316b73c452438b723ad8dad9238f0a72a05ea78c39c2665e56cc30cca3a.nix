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
      identifier = { name = "Hangman"; version = "0.10.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "henry.ford@gmail.com";
      author = "lf94";
      homepage = "";
      url = "";
      synopsis = "The classic game of Hangman";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Hangman" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }