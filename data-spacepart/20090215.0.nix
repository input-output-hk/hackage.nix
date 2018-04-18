{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-spacepart";
          version = "20090215.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Corey O'Connor <coreyoconnor@gmail.com>";
        author = "Corey O'Connor <coreyoconnor@gmail.com>";
        homepage = "http://code.haskell.org/data-spacepart";
        url = "http://code.haskell.org/data-spacepart";
        synopsis = "Deprecated. Now called \"spacepart\". Space partitioning data structures.";
        description = "Package \"data-spacepart\" is now called just \"spacepart\". This was due to issues with the version\nnumber used for the first release of data-spacepart.\n\nhttp:\\/\\/hackage.haskell.org\\/cgi-bin\\/hackage-scripts\\/package\\/spacepart\n\nSpace partition data structures. Currently only a QuadTree.\n\ndarcs get --partial http:\\/\\/code.haskell.org\\/data-spacepart\\/\n\nTODO:\n\nlots.\n\nSee README: http:\\/\\/code.haskell.org\\/data-spacepart\\/README";
        buildType = "Simple";
      };
      components = {
        data-spacepart = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector-space
          ];
        };
      };
    }