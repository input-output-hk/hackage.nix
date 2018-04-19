{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa";
          version = "2.0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The DPH Team";
        homepage = "http://repa.ouroborus.net";
        url = "";
        synopsis = "High performance, regular, shape polymorphic parallel arrays.";
        description = "Repa provides high performance, regular, multi-dimensional, shape polymorphic parallel arrays.\nAll numeric data is stored unboxed. Functions written with the Repa combinators\nare automatically parallel provided you supply +RTS -Nwhatever on the command\nline when running the program.";
        buildType = "Simple";
      };
      components = {
        repa = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.vector
            hsPkgs.QuickCheck
            hsPkgs.template-haskell
          ];
        };
      };
    }