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
      identifier = { name = "dataframe-learn"; version = "1.0.2.0"; };
      license = "MIT";
      copyright = "(c) 2024-2026 Michael Chavinda";
      maintainer = "mschavinda@gmail.com";
      author = "Michael Chavinda";
      homepage = "";
      url = "";
      synopsis = "Decision trees and feature synthesis for the dataframe ecosystem.";
      description = "@DataFrame.DecisionTree@ — decision-tree training on DataFrames.\n@DataFrame.Synthesis@ — feature synthesis. Built on top of\n@dataframe-operations@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."dataframe-operations" or (errorHandler.buildDepError "dataframe-operations"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
        ];
        buildable = true;
      };
    };
  }