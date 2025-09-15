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
      identifier = { name = "COrdering"; version = "2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Adrian Hey 2004-2008";
      maintainer = "Bodigrim";
      author = "Adrian Hey";
      homepage = "";
      url = "";
      synopsis = "An algebraic data type similar to Prelude Ordering.";
      description = "Typically this is used as the return type of a combining comparison, which combines two\nvalues if they are deemed equal in some sense. Currently combining comparisons are used\nextensively by the <https://hackage.haskell.org/package/AvlTree AVL tree package>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }