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
      identifier = { name = "timeutils"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Jonathan Lamothe";
      maintainer = "jlamothe1980@gmail.com";
      author = "Jonathan Lamothe";
      homepage = "https://github.com/jlamothe/timeutils#readme";
      url = "";
      synopsis = "Time utilities";
      description = "Please see the README on GitHub at <https://github.com/jlamothe/timeutils#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "timeutils" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timeutils" or (errorHandler.buildDepError "timeutils"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      tests = {
        "timeutils-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timeutils" or (errorHandler.buildDepError "timeutils"))
            ];
          buildable = true;
          };
        };
      };
    }