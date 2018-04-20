{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Dust-crypto";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "brandon@ischool.utexas.edu";
        author = "Brandon Wiley";
        homepage = "";
        url = "";
        synopsis = "Cryptographic operations";
        description = "Cryptographic operations used by the Dust polymorphic protocl engine";
        buildType = "Simple";
      };
      components = {
        Dust-crypto = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.entropy
            hsPkgs.network
            hsPkgs.cereal
            hsPkgs.ghc-prim
            hsPkgs.binary
            hsPkgs.random
            hsPkgs.random-extras
            hsPkgs.random-source
            hsPkgs.random-fu
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.split
            hsPkgs.skein
            hsPkgs.crypto-api
            hsPkgs.cryptohash
            hsPkgs.threefish
          ];
          libs = pkgs.lib.optional (system.isLinux || system.isOsx) pkgs.crypto;
        };
        tests = {
          crypto = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.bytestring
              hsPkgs.threefish
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }