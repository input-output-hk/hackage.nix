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
      identifier = { name = "HLearn-distributions"; version = "0.2.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "Distributions for use with the HLearn library";
      description = "This module is used to estimate statistical distributions from data.  The focus is a clean interface inspired by algebra.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HLearn-algebra" or (errorHandler.buildDepError "HLearn-algebra"))
          (hsPkgs."ConstraintKinds" or (errorHandler.buildDepError "ConstraintKinds"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."list-extras" or (errorHandler.buildDepError "list-extras"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
          ];
        buildable = true;
        };
      exes = {
        "HLearn-Distributions-Criterion" = {
          depends = [
            (hsPkgs."HLearn-algebra" or (errorHandler.buildDepError "HLearn-algebra"))
            (hsPkgs."ConstraintKinds" or (errorHandler.buildDepError "ConstraintKinds"))
            (hsPkgs."HLearn-distributions" or (errorHandler.buildDepError "HLearn-distributions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            ];
          buildable = true;
          };
        "HLearn-Distributions-SpaceTests" = {
          depends = [
            (hsPkgs."HLearn-algebra" or (errorHandler.buildDepError "HLearn-algebra"))
            (hsPkgs."ConstraintKinds" or (errorHandler.buildDepError "ConstraintKinds"))
            (hsPkgs."HLearn-distributions" or (errorHandler.buildDepError "HLearn-distributions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            ];
          buildable = true;
          };
        };
      };
    }