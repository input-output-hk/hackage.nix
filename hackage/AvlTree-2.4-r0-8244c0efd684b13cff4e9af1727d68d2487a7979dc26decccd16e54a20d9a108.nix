{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "AvlTree";
        version = "2.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Adrian Hey 2004-2008";
      maintainer = "http://homepages.nildram.co.uk/~ahey/em.png";
      author = "Adrian Hey";
      homepage = "http://www.haskell.org/haskellwiki/AvlTree";
      url = "";
      synopsis = "Balanced binary trees using AVL algorithm.";
      description = "A comprehensive library and efficient implementation of AVL trees. The raw AVL\nAPI has been designed with efficiency and generality in mind, not elagance. It\ncontains all the stuff you really don't want to write yourself if you can avoid\nit. This library may be useful for rolling your own Sets, Maps, Sequences, Queues\n(for example).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.COrdering)
        ];
      };
    };
  }