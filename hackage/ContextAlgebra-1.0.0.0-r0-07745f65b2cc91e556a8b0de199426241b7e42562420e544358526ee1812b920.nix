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
      identifier = { name = "ContextAlgebra"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hahn@geoinfo.tuwien.ac.at";
      author = "Jürgen Hahn";
      homepage = "https://github.com/juergenhah/ContextAlgebra";
      url = "";
      synopsis = "Implementation of the context algebra.";
      description = "Implementation of the context algebra published in dissertation: Context Algebra applied to Spatial Concepts";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ContextAlgebra" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            ];
          buildable = true;
          };
        };
      };
    }