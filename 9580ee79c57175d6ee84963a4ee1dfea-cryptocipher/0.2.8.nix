{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      benchmark = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cryptocipher";
          version = "0.2.8";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-cryptocipher";
        url = "";
        synopsis = "Symmetrical Block, Stream and PubKey Ciphers";
        description = "Symmetrical Block, Stream and PubKey Ciphers";
        buildType = "Simple";
      };
      components = {
        cryptocipher = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.crypto-api
            hsPkgs.tagged
            hsPkgs.cereal
          ];
        };
        exes = {
          Tests = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.QuickCheck
            ];
          };
          Benchmarks = {
            depends  = pkgs.lib.optionals _flags.benchmark [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.mtl
            ];
          };
        };
      };
    }