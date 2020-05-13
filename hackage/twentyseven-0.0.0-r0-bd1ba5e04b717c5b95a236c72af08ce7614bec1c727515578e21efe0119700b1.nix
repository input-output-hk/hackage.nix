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
      identifier = { name = "twentyseven"; version = "0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "li-yao.xia@ens.fr";
      author = "Li-yao Xia";
      homepage = "https://github.com/lysxia/twentyseven";
      url = "";
      synopsis = "Rubik's cube solver";
      description = "Solve 3×3×3 Rubik's cubes in the fewest possible moves. Or, if you can't\nwait, get /close enough/ with the two-phase solver.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."heap" or (errorHandler.buildDepError "heap"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
          (hsPkgs."ref-fd" or (errorHandler.buildDepError "ref-fd"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "twentyseven" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."twentyseven" or (errorHandler.buildDepError "twentyseven"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-twentyseven" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-test-quickcheck" or (errorHandler.buildDepError "cabal-test-quickcheck"))
            (hsPkgs."HUnit-Plus" or (errorHandler.buildDepError "HUnit-Plus"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."twentyseven" or (errorHandler.buildDepError "twentyseven"))
            ];
          buildable = true;
          };
        };
      };
    }