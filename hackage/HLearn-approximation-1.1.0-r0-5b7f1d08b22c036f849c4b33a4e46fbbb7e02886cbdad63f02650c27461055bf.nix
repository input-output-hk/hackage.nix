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
      identifier = { name = "HLearn-approximation"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Approximation algorithms for NP-hard problems";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HLearn-algebra" or (errorHandler.buildDepError "HLearn-algebra"))
          (hsPkgs."HLearn-distributions" or (errorHandler.buildDepError "HLearn-distributions"))
          (hsPkgs."HLearn-datastructures" or (errorHandler.buildDepError "HLearn-datastructures"))
          (hsPkgs."ConstraintKinds" or (errorHandler.buildDepError "ConstraintKinds"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."list-extras" or (errorHandler.buildDepError "list-extras"))
          (hsPkgs."heap" or (errorHandler.buildDepError "heap"))
          ];
        buildable = true;
        };
      };
    }