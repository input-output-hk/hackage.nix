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
      identifier = { name = "wxSimpleCanvas"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen (2016)";
      maintainer = "Kristof Bastiaensen";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "Simple zoomable canvas for wxHaskell";
      description = "A simple zoomable canvas for wxHaskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cubicbezier" or (errorHandler.buildDepError "cubicbezier"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          ];
        buildable = true;
        };
      };
    }