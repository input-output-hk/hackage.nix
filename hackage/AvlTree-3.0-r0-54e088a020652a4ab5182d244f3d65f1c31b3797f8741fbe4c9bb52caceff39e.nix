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
      specVersion = "1.2";
      identifier = { name = "AvlTree"; version = "3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Adrian Hey 2004-2008";
      maintainer = "http://homepages.nildram.co.uk/~ahey/em.png";
      author = "Adrian Hey";
      homepage = "http://www.haskell.org/haskellwiki/AvlTree";
      url = "";
      synopsis = "Balanced binary trees using the AVL algorithm.";
      description = "A comprehensive library and efficient implementation of AVL trees. The raw AVL\nAPI has been designed with efficiency and generality in mind, not elagance or\nsafety. It contains all the stuff you really don't want to write yourself if you\ncan avoid it. This library may be useful for rolling your own Sets, Maps, Sequences,\nQueues (for example).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."COrdering" or (errorHandler.buildDepError "COrdering"))
        ];
        buildable = true;
      };
    };
  }