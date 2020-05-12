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
      specVersion = "1.4";
      identifier = {
        name = "hinduce-associations-apriori";
        version = "0.0.0.0";
        };
      license = "MIT";
      copyright = "Hidde Verstoep";
      maintainer = "";
      author = "Hidde Verstoep";
      homepage = "https://github.com/roberth/hinduce-associations-apriori";
      url = "";
      synopsis = "Apriori algorithm for association rule mining";
      description = "This module provides an implementation of the Apriori algorithm for association rule mining. It uses Control.Parallel.Strategies for parallelism and allows the user to provide custom selection criteria. See hinduce-examples for an example.\nhInduce is a framework for knowledge discovery/machine learning/data mining. It has a modular design that hopefully will invite others to re-use and build upon the interface. This module currently deviates from this concept, because we had a different focus and too limited time budget to investigate other rule mining algorithms and find any use for this kind of abstraction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hinduce-missingh" or (errorHandler.buildDepError "hinduce-missingh"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }