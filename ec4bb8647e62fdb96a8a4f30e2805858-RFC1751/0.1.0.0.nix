{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "RFC1751";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "root@xeno-genesis.com";
        author = "Jean-Pierre Rupp";
        homepage = "https://github.com/Xeno-Genesis/RFC1751";
        url = "";
        synopsis = "RFC-1751 library for Haskell";
        description = "Convert 128-bit ByteString to/from 12 English words.";
        buildType = "Simple";
      };
      components = {
        RFC1751 = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
          ];
        };
        tests = {
          test-haskoin-crypto = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.RFC1751
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }