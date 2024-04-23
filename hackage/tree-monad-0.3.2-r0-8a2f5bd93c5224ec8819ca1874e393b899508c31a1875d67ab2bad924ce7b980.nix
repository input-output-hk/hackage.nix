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
      identifier = { name = "tree-monad"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nbu@informatik.uni-kiel.de";
      author = "Sebastian Fischer";
      homepage = "http://sebfisch.github.com/tree-monad";
      url = "";
      synopsis = "Non-Determinism Monad for Tree Search";
      description = "This Haskell library provides an implementation of the\nMonadPlus type class that represents the search space\nas a tree whose constructors represent mzero, return,\nand mplus.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }