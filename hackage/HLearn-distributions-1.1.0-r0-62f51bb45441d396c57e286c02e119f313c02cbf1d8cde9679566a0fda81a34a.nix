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
      identifier = { name = "HLearn-distributions"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "http://github.com/mikeizbicki/HLearn/";
      url = "";
      synopsis = "Distributions for use with the HLearn library";
      description = "This module is used to estimate statistical distributions from data.  It is based on the algebraic properties of the \"HomTrainer\" type class from the HLearn-algebra package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HLearn-algebra" or (errorHandler.buildDepError "HLearn-algebra"))
          (hsPkgs."HLearn-datastructures" or (errorHandler.buildDepError "HLearn-datastructures"))
          (hsPkgs."ConstraintKinds" or (errorHandler.buildDepError "ConstraintKinds"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."list-extras" or (errorHandler.buildDepError "list-extras"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."gamma" or (errorHandler.buildDepError "gamma"))
          (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
          ];
        buildable = true;
        };
      };
    }