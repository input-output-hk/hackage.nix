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
      identifier = { name = "polysemy-log"; version = "0.4.1.0"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2021 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/polysemy-log#readme";
      url = "";
      synopsis = "Polysemy Effects for Logging";
      description = "See <https://hackage.haskell.org/package/polysemy-log/docs/Polysemy-Log.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-conc" or (errorHandler.buildDepError "polysemy-conc"))
          (hsPkgs."polysemy-time" or (errorHandler.buildDepError "polysemy-time"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "polysemy-log-unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-conc" or (errorHandler.buildDepError "polysemy-conc"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-test" or (errorHandler.buildDepError "polysemy-test"))
            (hsPkgs."polysemy-time" or (errorHandler.buildDepError "polysemy-time"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }