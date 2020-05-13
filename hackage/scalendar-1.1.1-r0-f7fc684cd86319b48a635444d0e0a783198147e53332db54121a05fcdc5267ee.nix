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
      identifier = { name = "scalendar"; version = "1.1.1"; };
      license = "MIT";
      copyright = "2017 Stack Builders Inc.";
      maintainer = "Stack Builders <hackage@stackbuilders.com>";
      author = "Sebastian Pulido Gómez <spulido@stackbuilders.com>";
      homepage = "https://github.com/stackbuilders/scalendar";
      url = "";
      synopsis = "This is a library for handling calendars and resource availability\nbased on the \"top-nodes algorithm\" and set operations.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "scalendar-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scalendar" or (errorHandler.buildDepError "scalendar"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }