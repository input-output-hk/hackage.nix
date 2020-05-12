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
      specVersion = "1.6";
      identifier = { name = "equivalence"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Patrick Bahr <paba@diku.dk>";
      author = "Patrick Bahr <paba@diku.dk>";
      homepage = "";
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
          ];
        buildable = true;
        };
      };
    }