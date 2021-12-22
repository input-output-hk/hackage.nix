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
      identifier = { name = "polysemy-log-co"; version = "0.4.2.0"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2021 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/polysemy-log#readme";
      url = "";
      synopsis = "Colog Adapters for Polysemy-Log";
      description = "See <https://hackage.haskell.org/package/polysemy-log-co/docs/Polysemy-Log-Colog.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."co-log" or (errorHandler.buildDepError "co-log"))
          (hsPkgs."co-log-core" or (errorHandler.buildDepError "co-log-core"))
          (hsPkgs."co-log-polysemy" or (errorHandler.buildDepError "co-log-polysemy"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-conc" or (errorHandler.buildDepError "polysemy-conc"))
          (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
          (hsPkgs."polysemy-time" or (errorHandler.buildDepError "polysemy-time"))
          ];
        buildable = true;
        };
      tests = {
        "polysemy-log-co-unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."co-log" or (errorHandler.buildDepError "co-log"))
            (hsPkgs."co-log-polysemy" or (errorHandler.buildDepError "co-log-polysemy"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-log-co" or (errorHandler.buildDepError "polysemy-log-co"))
            (hsPkgs."polysemy-test" or (errorHandler.buildDepError "polysemy-test"))
            (hsPkgs."polysemy-time" or (errorHandler.buildDepError "polysemy-time"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ];
          buildable = true;
          };
        };
      };
    }