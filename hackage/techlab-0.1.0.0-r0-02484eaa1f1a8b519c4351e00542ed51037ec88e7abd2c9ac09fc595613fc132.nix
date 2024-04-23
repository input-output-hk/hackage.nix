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
      identifier = { name = "techlab"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Bleeding edge prelude";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chassis" or (errorHandler.buildDepError "chassis"))
          (hsPkgs."co-log-polysemy" or (errorHandler.buildDepError "co-log-polysemy"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."path-dhall-instance" or (errorHandler.buildDepError "path-dhall-instance"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-extra" or (errorHandler.buildDepError "polysemy-extra"))
          (hsPkgs."polysemy-fs" or (errorHandler.buildDepError "polysemy-fs"))
          (hsPkgs."polysemy-methodology" or (errorHandler.buildDepError "polysemy-methodology"))
          (hsPkgs."polysemy-methodology-composite" or (errorHandler.buildDepError "polysemy-methodology-composite"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."polysemy-vinyl" or (errorHandler.buildDepError "polysemy-vinyl"))
          (hsPkgs."polysemy-zoo" or (errorHandler.buildDepError "polysemy-zoo"))
        ];
        buildable = true;
      };
    };
  }