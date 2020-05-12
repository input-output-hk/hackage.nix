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
      identifier = { name = "Chart-gtk"; version = "1.2.4"; };
      license = "BSD-3-Clause";
      copyright = "Tim Docker, 2006-2010";
      maintainer = "Tim Docker <tim@dockerz.net>";
      author = "Tim Docker <tim@dockerz.net>";
      homepage = "https://github.com/timbod7/haskell-chart/wiki";
      url = "";
      synopsis = "Utility functions for using the chart library with GTK";
      description = "Utility functions for using the chart library with GTK";
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
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          ];
        buildable = true;
        };
      };
    }