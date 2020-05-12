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
      identifier = { name = "colour-space"; version = "0.1.5.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsag \$ hvl.no";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/colour-space";
      url = "";
      synopsis = "Instances of the manifold-classes for colour types";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."manifolds" or (errorHandler.buildDepError "manifolds"))
          (hsPkgs."constrained-categories" or (errorHandler.buildDepError "constrained-categories"))
          (hsPkgs."linearmap-category" or (errorHandler.buildDepError "linearmap-category"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ];
        buildable = true;
        };
      };
    }