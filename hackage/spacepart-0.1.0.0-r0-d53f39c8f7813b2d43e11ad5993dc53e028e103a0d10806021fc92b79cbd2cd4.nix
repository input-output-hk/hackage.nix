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
      specVersion = "1.6";
      identifier = {
        name = "spacepart";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor <coreyoconnor@gmail.com>";
      author = "Corey O'Connor <coreyoconnor@gmail.com>";
      homepage = "http://code.haskell.org/data-spacepart";
      url = "http://code.haskell.org/data-spacepart";
      synopsis = "Space partition data structures. Currently only a QuadTree.";
      description = "Space partition data structures. Currently only a QuadTree.\n\ndarcs get --partial http:\\/\\/code.haskell.org\\/data-spacepart\\/\n\nTODO:\n\nlots.\n\nSee README: http:\\/\\/code.haskell.org\\/data-spacepart\\/README";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector-space)
        ];
      };
    };
  }