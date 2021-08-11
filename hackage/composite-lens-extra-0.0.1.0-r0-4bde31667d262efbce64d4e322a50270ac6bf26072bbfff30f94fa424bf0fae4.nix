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
      identifier = { name = "composite-lens-extra"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "2021 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Extra lens functions for composite.";
      description = "Extra lens functions for composite.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
        buildable = true;
        };
      };
    }