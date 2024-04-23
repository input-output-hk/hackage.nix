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
      specVersion = "1.10";
      identifier = { name = "adtrees"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Uma Zalakain";
      maintainer = "ping@umazalakain.info";
      author = "Uma Zalakain";
      homepage = "";
      url = "";
      synopsis = "Modelling, rendering and quantitative analysis on attack defense trees";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }