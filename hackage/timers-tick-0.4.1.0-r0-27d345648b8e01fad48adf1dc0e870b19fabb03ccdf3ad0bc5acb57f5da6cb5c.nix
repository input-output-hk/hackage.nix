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
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "timers-tick"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2018 Francesco Ariis";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "http://ariis.it/static/articles/timers-tick/page.html";
      url = "";
      synopsis = "tick based timers";
      description = "Tick-based timers and utilities, for games and\ndiscrete-time programs.\nIncludes types and functions to work with sequence-based\nresources (e.g. animations, frames).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }