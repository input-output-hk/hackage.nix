{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      integer-gmp = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "crypto-numbers";
          version = "0.2.7";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/vincenthz/hs-crypto-numbers";
        url = "";
        synopsis = "Cryptographic numbers: functions and algorithms";
        description = "Cryptographic numbers: functions and algorithms";
        buildType = "Simple";
      };
      components = {
        crypto-numbers = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.crypto-random
          ] ++ pkgs.lib.optionals (compiler.isGhc && true && _flags.integer-gmp) [
            hsPkgs.integer-gmp
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          test-crypto-numbers = {
            depends  = [
              hsPkgs.base
              hsPkgs.crypto-random
              hsPkgs.crypto-numbers
              hsPkgs.bytestring
              hsPkgs.byteable
              hsPkgs.vector
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
            ];
          };
        };
        benchmarks = {
          bench-crypto-numbers = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.crypto-numbers
              hsPkgs.criterion
              hsPkgs.mtl
            ];
          };
        };
      };
    }