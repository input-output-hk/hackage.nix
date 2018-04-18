{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "concurrent-st";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/concurrent-st#readme";
        url = "";
        synopsis = "Concurrent Haskell in ST";
        description = "Concurrent Haskell in ST";
        buildType = "Simple";
      };
      components = {
        concurrent-st = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }