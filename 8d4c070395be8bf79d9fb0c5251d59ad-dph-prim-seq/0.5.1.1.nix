{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dph-prim-seq";
          version = "0.5.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
        author = "The DPH Team";
        homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
        url = "";
        synopsis = "Sequential Primitives for Data-Parallel Haskell.";
        description = "";
        buildType = "Simple";
      };
      components = {
        dph-prim-seq = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.vector
            hsPkgs.dph-base
            hsPkgs.dph-prim-interface
          ];
        };
      };
    }