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
      identifier = { name = "Smooth"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dillonhuff@gmail.com";
      author = "Dillon Huff";
      homepage = "";
      url = "";
      synopsis = "A tiny, lazy SMT solver";
      description = "A tiny, lazy SMT solver. This solver is based on algorithms\ndescribed in 'Decision Procedures: An Algorithmic Point of View'";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."FirstOrderTheory" or (errorHandler.buildDepError "FirstOrderTheory"))
          (hsPkgs."Proper" or (errorHandler.buildDepError "Proper"))
          (hsPkgs."DifferenceLogic" or (errorHandler.buildDepError "DifferenceLogic"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }