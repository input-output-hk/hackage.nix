{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mmtf";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017, Pavel Yakovlev";
        maintainer = "pavel@yakovlev.me";
        author = "Pavel Yakovlev";
        homepage = "https://github.com/zmactep/mmtf#readme";
        url = "";
        synopsis = "Macromolecular Transmission Format implementation";
        description = "Haskell implementation of MMTF biological structure format.";
        buildType = "Simple";
      };
      components = {
        mmtf = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-msgpack
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.containers
          ];
        };
        tests = {
          mmtf-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mmtf
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.bytestring
            ];
          };
        };
      };
    }