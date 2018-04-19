{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-excess";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-excess#readme";
        url = "";
        synopsis = "Excess";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-excess = {
          depends  = [
            hsPkgs.base
            hsPkgs.hw-bits
            hsPkgs.hw-prim
            hsPkgs.hw-rankselect-base
            hsPkgs.safe
            hsPkgs.storable-record
            hsPkgs.vector
          ];
        };
        tests = {
          hw-excess-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hw-bits
              hsPkgs.hw-prim
              hsPkgs.hw-excess
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
      };
    }