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
      identifier = { name = "manifolds-core"; version = "0.6.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsag $ hvl.no";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/manifolds";
      url = "";
      synopsis = "The basic classes for the manifolds hierarchy.";
      description = "The basic classes for the\n<http://hackage.haskell.org/package/manifolds manifolds> hierarchy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
          (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
          ];
        buildable = true;
        };
      };
    }