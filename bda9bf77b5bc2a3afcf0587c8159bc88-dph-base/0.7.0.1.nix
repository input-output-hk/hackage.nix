{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dtrace = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dph-base";
          version = "0.7.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
        author = "The DPH Team";
        homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
        url = "";
        synopsis = "Data Parallel Haskell common config and debugging functions.";
        description = "Common configuration, debugging and utilities.";
        buildType = "Simple";
      };
      components = {
        dph-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.array
            hsPkgs.random
            hsPkgs.vector
            hsPkgs.pretty
          ];
        };
      };
    }