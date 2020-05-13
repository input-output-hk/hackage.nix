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
      identifier = { name = "monad-par"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow 2011";
      maintainer = "Simon Marlow <marlowsd@gmail.com>, Ryan Newton <rrnewton@gmail.com>";
      author = "Simon Marlow, Ryan Newton";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "A library for parallel programming based on a monad";
      description = "The 'Par' monad offers a simple API for parallel programming.  The\nlibrary works for parallelising both pure and @IO@ computations,\nalthough only the pure version is deterministic.\n\nFor complete documentation see \"Control.Monad.Par\".\n\nSome examples of use can be found in the @examples/@ directory of\nthe source package.\n\nOther related packages:\n\n* @abstract-par@ provides the type classes that abstract over different\nimplementations of the @Par@ monad.\n\n* @monad-par-extras@ provides some extra combinators layered on top of\nthe @Par@ monad.\n\nChanges in 0.3.4 relative to 0.3:\n\n* Fix bugs that cause \"thread blocked indefinitely on MVar\" crashes.\n\n* Added \"Control.Monad.Par.IO\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
          (hsPkgs."abstract-deque" or (errorHandler.buildDepError "abstract-deque"))
          (hsPkgs."monad-par-extras" or (errorHandler.buildDepError "monad-par-extras"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test-monad-par" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
            (hsPkgs."monad-par-extras" or (errorHandler.buildDepError "monad-par-extras"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            (hsPkgs."abstract-deque" or (errorHandler.buildDepError "abstract-deque"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }