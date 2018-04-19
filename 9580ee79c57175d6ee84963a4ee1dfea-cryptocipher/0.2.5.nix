{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cryptocipher";
          version = "0.2.5";
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
            hsPkgs.crypto-api
            hsPkgs.tagged
            hsPkgs.cereal
          ];
        };
        exes = {
          Tests = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }