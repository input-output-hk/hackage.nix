{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dph-lifted-vseg";
          version = "0.6.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
        author = "The DPH Team";
        homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
        url = "";
        synopsis = "Data Parallel Haskell lifted array combinators.";
        description = "This package provides the following:\nnested arrays and the primitive operators that work on them (PA functions);\nthe lifted array combinators that the vectoriser introduces (PP functions);\nthe user facing library functions that work on [::] style arrays (P functions).\nThis implementation directly encodes sharing between array segments,\nand avoids the copying that dph-lifted-copy would otherwise do.\nUse this version for production code.";
        buildType = "Simple";
      };
      components = {
        dph-lifted-vseg = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.array
            hsPkgs.random
            hsPkgs.template-haskell
            hsPkgs.vector
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.dph-base
            hsPkgs.dph-prim-par
            hsPkgs.dph-lifted-base
          ];
        };
      };
    }