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
      identifier = { name = "equivalence"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paba@itu.dk";
      author = "Patrick Bahr";
      homepage = "https://github.com/pa-ba/equivalence";
      url = "";
      synopsis = "Maintaining an equivalence relation implemented as union-find using STT.";
      description = "This is an implementation of Tarjan's Union-Find algorithm (Robert\nE. Tarjan. \"Efficiency of a Good But Not Linear Set Union\nAlgorithm\", JACM 22(2), 1975) in order to maintain an equivalence\nrelation.\nThis implementation is a port of the /union-find/ package using the\nST monad transformer (instead of the IO monad).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
            ];
          buildable = true;
          };
        };
      };
    }