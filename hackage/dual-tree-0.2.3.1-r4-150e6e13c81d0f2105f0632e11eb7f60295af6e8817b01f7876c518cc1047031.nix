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
      identifier = { name = "dual-tree"; version = "0.2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Rose trees with cached and accumulating monoidal annotations";
      description = "Rose (n-ary) trees with both upwards- (/i.e./\ncached) and downwards-traveling (/i.e./\naccumulating) monoidal annotations.  This is used\nas the core data structure underlying\nthe @diagrams@ framework\n(<https://diagrams.github.io>), but\npotentially has other applications as well.\n\nAbstractly, a DUALTree is a rose (n-ary) tree\nwith data (of type @l@) at leaves, data (of type\n@a@) at internal nodes, and two types of monoidal\nannotations, one (of type @u@) travelling \\\"up\\\"\nthe tree and one (of type @d@) traveling\n\\\"down\\\".\n\nSee \"Data.Tree.DUAL\" for full documentation.\n\"Data.Tree.DUAL\" provides a public API which\nshould suffice for most purposes.\n\"Data.Tree.DUAL.Internal\" exports more of the\ninternal implementation---use it at your own\nrisk.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."testing-feat" or (errorHandler.buildDepError "testing-feat"))
            (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."dual-tree" or (errorHandler.buildDepError "dual-tree"))
          ];
          buildable = true;
        };
      };
    };
  }