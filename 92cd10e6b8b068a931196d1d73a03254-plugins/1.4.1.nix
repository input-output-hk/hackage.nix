{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "plugins";
          version = "1.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Don Stewart 2004-2009";
        homepage = "http://code.haskell.org/~dons/code/hs-plugins";
        url = "";
        synopsis = "Dynamic linking for Haskell and C objects";
        description = "Dynamic linking and runtime evaluation of Haskell,\nand C, including dependency chasing and package resolution.\n\nDescribed in the paper:\n/Plugging Haskell In/, <http://www.cse.unsw.edu.au/~dons/papers/PSSC04.html>";
        buildType = "Configure";
      };
      components = {
        "plugins" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.haskell-src
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.directory
            hsPkgs.random
            hsPkgs.process
            hsPkgs.ghc
            hsPkgs.ghc-prim
          ];
        };
      };
    }