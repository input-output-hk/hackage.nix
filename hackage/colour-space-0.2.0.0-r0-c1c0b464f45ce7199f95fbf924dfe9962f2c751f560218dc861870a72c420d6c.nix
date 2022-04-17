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
      identifier = { name = "colour-space"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsag $ hvl.no";
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
          (hsPkgs."manifolds-core" or (errorHandler.buildDepError "manifolds-core"))
          (hsPkgs."constrained-categories" or (errorHandler.buildDepError "constrained-categories"))
          (hsPkgs."linearmap-category" or (errorHandler.buildDepError "linearmap-category"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ];
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."colour-space" or (errorHandler.buildDepError "colour-space"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."manifolds-core" or (errorHandler.buildDepError "manifolds-core"))
            (hsPkgs."manifolds" or (errorHandler.buildDepError "manifolds"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."constrained-categories" or (errorHandler.buildDepError "constrained-categories"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }