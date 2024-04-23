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
      identifier = { name = "schedule-planner"; version = "0.1.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "2015";
      maintainer = "Justus Adam <development@justusadam.com>";
      author = "Justus Adam <development@justusadam.com>";
      homepage = "";
      url = "";
      synopsis = "Find the ideal lesson layout";
      description = "Executable program for calculating layouts for fixed grid schedules as\nare used in many universities and schools.\nThe primary data format for in- and output is json, a deployable server\ninstance of this software is planned.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "schedule-planner" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."options" or (errorHandler.buildDepError "options"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."happstack-lite" or (errorHandler.buildDepError "happstack-lite"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }