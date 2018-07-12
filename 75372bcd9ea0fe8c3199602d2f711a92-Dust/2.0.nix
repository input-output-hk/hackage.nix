{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Dust";
          version = "2.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "brandon@ischool.utexas.edu";
        author = "Brandon Wiley";
        homepage = "";
        url = "";
        synopsis = "Polymorphic protocol engine";
        description = "Dust is a polymorphic protocol engine designed to circumvent Internet filtering based on protocol identification";
        buildType = "Simple";
      };
      components = {
        "Dust" = {
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
            hsPkgs.cipher-aes
          ];
          libs = pkgs.lib.optional (system.isLinux || system.isOsx) pkgs.crypto;
        };
        tests = {
          "crypto" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.bytestring
              hsPkgs.cipher-aes
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.QuickCheck
            ];
          };
          "core" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
              hsPkgs.bytestring
              hsPkgs.cipher-aes
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }