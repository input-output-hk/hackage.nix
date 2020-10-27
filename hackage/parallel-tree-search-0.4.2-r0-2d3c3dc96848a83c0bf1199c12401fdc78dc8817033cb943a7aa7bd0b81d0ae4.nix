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
      identifier = { name = "parallel-tree-search"; version = "0.4.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "nbu@informatik.uni-kiel.de";
      author = "Fabian Reck, Sebastian Fischer";
      homepage = "https://github.com/nbun/parallel-tree-search";
      url = "";
      synopsis = "Parallel Tree Search";
      description = "This Haskell library provides an implementation of parallel\nsearch based on the search tree provided by the package\ntree-monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."tree-monad" or (errorHandler.buildDepError "tree-monad"))
          ];
        buildable = true;
        };
      };
    }