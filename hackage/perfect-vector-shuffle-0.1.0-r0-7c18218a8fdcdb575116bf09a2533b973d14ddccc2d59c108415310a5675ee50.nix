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
      specVersion = "2.2";
      identifier = { name = "perfect-vector-shuffle"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019";
      maintainer = "callan.mcgill@gmail.com";
      author = "Callan McGill";
      homepage = "https://github.com/Boarders/perfect-vector-shuffle";
      url = "";
      synopsis = "Library for performing vector shuffles";
      description = "\nThis package contains functions for performing shuffles on mutable and\nimmutable vectors. The shuffles are uniform at random amongst all\npermuations.\n\nFor an example of how to use it:\n\n@\nmodule Example where\n\nimport Data.Vector\nimport Immutable.Shuffle\n\nmyVector :: Vector Int\nmyVector = fromList [1..10]\n\nshuffleMyVector :: IO (Vector Int)\nshuffleMyVector = shuffleM myVector\n@\n\nThis gives the following:\n\n@\n> shuffleMyVector\n[1,10,4,7,2,3,5,9,8,6]\n> shuffleMyVector\n[7,4,2,10,9,8,6,5,1,3]\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."perfect-vector-shuffle" or (errorHandler.buildDepError "perfect-vector-shuffle"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            ];
          buildable = true;
          };
        };
      };
    }