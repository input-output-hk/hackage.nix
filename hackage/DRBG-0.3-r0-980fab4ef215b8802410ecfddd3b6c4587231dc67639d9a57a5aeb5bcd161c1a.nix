{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "DRBG";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Deterministic random bit generator (aka RNG, PRNG) based\nHMACs, Hashes, and Ciphers.";
      description = "Cryptographically secure RNGs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.prettyclass)
          (hsPkgs.tagged)
          (hsPkgs.crypto-api)
          (hsPkgs.cryptohash)
          (hsPkgs.parallel)
          (hsPkgs.mtl)
          (hsPkgs.cipher-aes128)
          (hsPkgs.entropy)
        ];
      };
      exes = {
        "drbg_test" = {
          depends = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.crypto-api)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.cryptohash)
            (hsPkgs.crypto-api-tests)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }