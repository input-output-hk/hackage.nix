{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "secp256k1";
          version = "0.1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "2015 Jean-Pierre Rupp";
        maintainer = "root@haskoin.com";
        author = "Jean-Pierre Rupp";
        homepage = "http://github.com/haskoin/secp256k1#readme";
        url = "";
        synopsis = "secp256k1 bindings for Haskell";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        secp256k1 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.entropy
          ];
          libs = [ pkgs.secp256k1 ];
        };
        tests = {
          secp256k1-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.secp256k1
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.base16-bytestring
              hsPkgs.cryptohash
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.entropy
            ];
          };
        };
      };
    }