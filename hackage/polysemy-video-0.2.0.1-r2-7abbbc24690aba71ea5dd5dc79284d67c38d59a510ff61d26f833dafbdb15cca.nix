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
      identifier = { name = "polysemy-video"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Experimental video processing DSL for polysemy.";
      description = "Experimental video processing DSL for polysemy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-formatting" or (errorHandler.buildDepError "path-formatting"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."simple-media-timestamp" or (errorHandler.buildDepError "simple-media-timestamp"))
          (hsPkgs."simple-media-timestamp-formatting" or (errorHandler.buildDepError "simple-media-timestamp-formatting"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          ];
        buildable = true;
        };
      };
    }