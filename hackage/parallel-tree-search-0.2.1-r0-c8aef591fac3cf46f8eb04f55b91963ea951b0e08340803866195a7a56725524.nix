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
      identifier = { name = "parallel-tree-search"; version = "0.2.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sebf@informatik.uni-kiel.de";
      author = "Fabian Reck, Sebastian Fischer";
      homepage = "http://github.com/sebfisch/parallel-tree-search";
      url = "";
      synopsis = "Parallel Tree Search";
      description = "This Haskell library provides an implementation of parallel search\nbased on the search tree provided by the package tree-monad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tree-monad" or (errorHandler.buildDepError "tree-monad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }