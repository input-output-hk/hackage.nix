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
      identifier = { name = "hledger-makeitso"; version = "0.10.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2018 Andreas Pauley";
      maintainer = "Andreas Pauley <hledger-makeitso@pauley.org.za>";
      author = "Andreas Pauley <hledger-makeitso@pauley.org.za>";
      homepage = "https://github.com/apauley/hledger-makeitso#readme";
      url = "";
      synopsis = "An hledger workflow focusing on automated statement import and classification.";
      description = "Please see the README on GitHub at <https://github.com/apauley/hledger-makeitso#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          ];
        buildable = true;
        };
      exes = {
        "hledger-makeitso" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hledger-makeitso" or (errorHandler.buildDepError "hledger-makeitso"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hledger-makeitso-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."hledger-makeitso" or (errorHandler.buildDepError "hledger-makeitso"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        };
      };
    }