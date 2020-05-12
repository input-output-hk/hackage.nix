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
      identifier = { name = "HLearn-classification"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "";
      description = "This module is for unsupervised, supervised, and semi-supervised classification tasks.  It is in desperate need of documentation and refactoring.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HLearn-algebra" or (errorHandler.buildDepError "HLearn-algebra"))
          (hsPkgs."HLearn-distributions" or (errorHandler.buildDepError "HLearn-distributions"))
          (hsPkgs."ConstraintKinds" or (errorHandler.buildDepError "ConstraintKinds"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."Safe" or (errorHandler.buildDepError "Safe"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."list-extras" or (errorHandler.buildDepError "list-extras"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
          ];
        buildable = true;
        };
      exes = {
        "HLearn-Classification-Demo" = {
          depends = [
            (hsPkgs."HLearn-algebra" or (errorHandler.buildDepError "HLearn-algebra"))
            (hsPkgs."ConstraintKinds" or (errorHandler.buildDepError "ConstraintKinds"))
            (hsPkgs."HLearn-distributions" or (errorHandler.buildDepError "HLearn-distributions"))
            (hsPkgs."HLearn-classification" or (errorHandler.buildDepError "HLearn-classification"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }