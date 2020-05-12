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
      identifier = { name = "Chart"; version = "1.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Tim Docker, 2006-2014";
      maintainer = "Tim Docker <tim@dockerz.net>";
      author = "Tim Docker <tim@dockerz.net>";
      homepage = "https://github.com/timbod7/haskell-chart/wiki";
      url = "";
      synopsis = "A library for generating 2D Charts and Plots";
      description = "A library for generating 2D Charts and Plots, with backends provided by\nCairo (<http://hackage.haskell.org/package/Chart-cairo>)\nand\nDiagrams (<http://hackage.haskell.org/package/Chart-diagrams>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }