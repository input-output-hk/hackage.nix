{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa";
          version = "1.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The DPH Team";
        homepage = "http://trac.haskell.org/repa";
        url = "";
        synopsis = "High performance, regular, shape polymorphic parallel arrays.";
        description = "NOTE: You must use the GHC head branch > 6.13.20100309 to get decent performance.\nRepa provides high performance, regular, multi-dimensional, shape polymorphic parallel arrays.\nAll numeric data is stored unboxed. Functions written with the Repa combinators\nare automatically parallel provided you supply +RTS -Nwhatever on the command\nline when running the program.";
        buildType = "Simple";
      };
      components = {
        repa = {
          depends  = [
            hsPkgs.base
            hsPkgs.dph-prim-par
            hsPkgs.dph-prim-seq
            hsPkgs.QuickCheck
          ];
        };
      };
    }