{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cipher-blowfish";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-crypto-cipher";
        url = "";
        synopsis = "Blowfish cipher";
        description = "Blowfish cipher primitives";
        buildType = "Simple";
      };
      components = {
        cipher-blowfish = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.vector
            hsPkgs.securemem
            hsPkgs.crypto-cipher-types
          ];
        };
        tests = {
          test-cipher-blowfish = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.byteable
              hsPkgs.crypto-cipher-types
              hsPkgs.crypto-cipher-tests
              hsPkgs.cipher-blowfish
            ];
          };
        };
        benchmarks = {
          bench-cipher-blowfish = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.mtl
              hsPkgs.crypto-cipher-types
              hsPkgs.crypto-cipher-benchmarks
              hsPkgs.cipher-blowfish
            ];
          };
        };
      };
    }