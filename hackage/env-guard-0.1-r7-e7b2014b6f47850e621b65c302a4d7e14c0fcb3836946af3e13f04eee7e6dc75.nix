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
      identifier = { name = "env-guard"; version = "0.1"; };
      license = "MIT";
      copyright = "2022 Thomas Bidne";
      maintainer = "tbidne@protonmail.com";
      author = "Thomas Bidne";
      homepage = "https://github.com/tbidne/env-guard/";
      url = "";
      synopsis = "Conditionally running IO actions based on environment variables.";
      description = "This package provides functions for validating presence / contents of\nenvironment variables, and conditionally running IO actions based on the\nresult.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }