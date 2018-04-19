{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "DRBG";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas DuBuisson";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A deterministic random bit generator (aka RNG, PRNG) implementing DRBGs from NIST SP 800-90";
        description = "A deterministic random bit generator implementing Hash and HMAC based DRBGs from NIST SP 800-90.";
        buildType = "Simple";
      };
      components = {
        DRBG = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.prettyclass
            hsPkgs.tagged
            hsPkgs.crypto-api
            hsPkgs.cryptohash
            hsPkgs.parallel
            hsPkgs.mtl
          ];
        };
        exes = {
          drbg_test = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.crypto-api
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.cereal
              hsPkgs.cryptohash
            ];
          };
        };
      };
    }