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
      specVersion = "1.2";
      identifier = { name = "hinduce-classifier"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Robert Hensing";
      author = "Robert Hensing";
      homepage = "";
      url = "";
      synopsis = "Interface and utilities for classifiers";
      description = "Provides an interface for classifiers and functions to use and analyze them. Take one or more hinduce-classifier-* packages for actual classifier implementations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."layout" or (errorHandler.buildDepError "layout"))
          (hsPkgs."hinduce-missingh" or (errorHandler.buildDepError "hinduce-missingh"))
          ];
        buildable = true;
        };
      };
    }