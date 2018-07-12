{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "netpbm";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "2013 Niklas Hambüchen <mail@nh2.me>";
        maintainer = "Niklas Hambüchen <mail@nh2.me>";
        author = "Niklas Hambüchen <mail@nh2.me>";
        homepage = "https://github.com/nh2/haskell-netpbm";
        url = "";
        synopsis = "Loading PBM, PGM, PPM image files";
        description = "This package contains pure Haskell parsers for the netpbm image formats: PBM, PGM and PPM, for both ASCII and binary encodings.";
        buildType = "Simple";
      };
      components = {
        "netpbm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.attoparsec-binary
            hsPkgs.bytestring
            hsPkgs.storable-record
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-th-unbox
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.netpbm
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
        };
      };
    }