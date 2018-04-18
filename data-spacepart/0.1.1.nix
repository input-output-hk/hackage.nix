{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-spacepart";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Corey O'Connor <coreyoconnor@gmail.com>";
        author = "Corey O'Connor <coreyoconnor@gmail.com>";
        homepage = "http://www.tothepowerofdisco.com/repo/data-spacepart/";
        url = "http://www.tothepowerofdisco.com/repo/data-spacepart/";
        synopsis = "Space partition data structures. Currently only a QuadTree.";
        description = "Space partition data structures. Currently only a QuadTree.\n\ndarcs get --partial http:\\/\\/code.haskell.org\\/data-spacepart\\/\n\nTODO:\n\nlots.\n\nSee README: http:\\/\\/code.haskell.org\\/data-spacepart\\/README";
        buildType = "Simple";
      };
      components = {
        data-spacepart = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector-space
            hsPkgs.mersenne-random
          ];
        };
      };
    }