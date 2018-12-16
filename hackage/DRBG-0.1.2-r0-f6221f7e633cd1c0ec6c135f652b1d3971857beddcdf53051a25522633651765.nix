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
        version = "0.1.2";
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
          ];
        };
      };
    };
  }