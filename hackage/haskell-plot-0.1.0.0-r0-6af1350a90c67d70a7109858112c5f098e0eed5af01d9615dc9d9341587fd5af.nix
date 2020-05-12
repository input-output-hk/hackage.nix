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
      specVersion = "1.8";
      identifier = { name = "haskell-plot"; version = "0.1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Kai Zhang <kai@kzhang.org>";
      author = "Kai Zhang <kai@kzhang.org>";
      homepage = "https://github.com/kaizhang/haskell-plot";
      url = "";
      synopsis = "A library for generating 2D plots painlessly.";
      description = "Greatly simplify the API of Chart (<http://hackage.haskell.org/package/Chart>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."Chart-gtk" or (errorHandler.buildDepError "Chart-gtk"))
          ];
        buildable = true;
        };
      };
    }