{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "RFC1751";
          version = "0.3.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "root@haskoin.com";
        author = "Jean-Pierre Rupp";
        homepage = "https://github.com/xenog/RFC1751";
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
            hsPkgs.bytestring
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