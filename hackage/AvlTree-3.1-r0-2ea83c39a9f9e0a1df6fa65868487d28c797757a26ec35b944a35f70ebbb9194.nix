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
        version = "3.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Adrian Hey 2004-2008";
      maintainer = "";
      author = "Adrian Hey";
      homepage = "";
      url = "";
      synopsis = "Balanced binary trees using the AVL algorithm.";
      description = "A comprehensive and efficient implementation of AVL trees. The raw AVL\nAPI has been designed with efficiency and generality in mind, not elagance or\nsafety. It contains all the stuff you really don't want to write yourself if you\ncan avoid it. This library may be useful for rolling your own Sets, Maps, Sequences,\nQueues (for example). This package is no longer actively maintained and will be\ntagged as such as soon as Hackage has this feature.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.COrdering)
        ];
      };
    };
  }