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
      specVersion = "2.2";
      identifier = { name = "polysemy-log"; version = "0.11.1.0"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2025 Torsten Schmits";
      maintainer = "hackage@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/polysemy-log#readme";
      url = "";
      synopsis = "Polysemy effects for logging";
      description = "See https://hackage.haskell.org/package/polysemy-log/docs/Polysemy-Log.html";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."incipit-core" or (errorHandler.buildDepError "incipit-core"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-conc" or (errorHandler.buildDepError "polysemy-conc"))
          (hsPkgs."polysemy-time" or (errorHandler.buildDepError "polysemy-time"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "polysemy-log-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."incipit-core" or (errorHandler.buildDepError "incipit-core"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-conc" or (errorHandler.buildDepError "polysemy-conc"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-test" or (errorHandler.buildDepError "polysemy-test"))
            (hsPkgs."polysemy-time" or (errorHandler.buildDepError "polysemy-time"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "space" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."incipit-core" or (errorHandler.buildDepError "incipit-core"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-conc" or (errorHandler.buildDepError "polysemy-conc"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          ];
          buildable = true;
        };
      };
    };
  }