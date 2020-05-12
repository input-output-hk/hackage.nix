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
      identifier = { name = "Chart-simple"; version = "1.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Tim Docker, 2006-2014";
      maintainer = "Tim Docker <tim@dockerz.net>";
      author = "Tim Docker <tim@dockerz.net>";
      homepage = "https://github.com/timbod7/haskell-chart/wiki";
      url = "";
      synopsis = "A wrapper for the chart library to assist with basic plots (Deprecated - use the Easy module instead)";
      description = "A wrapper for the chart library to assist with basic plots  (Deprecated - use the Easy module instead)";
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
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."Chart-gtk" or (errorHandler.buildDepError "Chart-gtk"))
          ];
        buildable = true;
        };
      };
    }