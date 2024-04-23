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
      specVersion = "1.6";
      identifier = { name = "chart-histogram"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Ben Gamari 2013";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "";
      url = "";
      synopsis = "Easily render histograms with Chart";
      description = "A library for rendering histograms with the Chart library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
        ];
        buildable = true;
      };
    };
  }