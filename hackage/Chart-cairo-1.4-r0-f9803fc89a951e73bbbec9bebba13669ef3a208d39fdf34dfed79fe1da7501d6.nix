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
      identifier = { name = "Chart-cairo"; version = "1.4"; };
      license = "BSD-3-Clause";
      copyright = "Tim Docker, 2006-2014";
      maintainer = "Tim Docker <tim@dockerz.net>";
      author = "Tim Docker <tim@dockerz.net>";
      homepage = "https://github.com/timbod7/haskell-chart/wiki";
      url = "";
      synopsis = "Cairo backend for Charts.";
      description = "Cairo backend for Charts.";
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
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          ];
        buildable = true;
        };
      };
    }