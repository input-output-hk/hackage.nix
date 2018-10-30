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
        name = "tls-extra";
        version = "0.6.4";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-tls";
      url = "";
      synopsis = "TLS extra default values and helpers";
      description = "a set of extra definitions, default values and helpers for tls.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tls)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.cryptohash)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.cipher-rc4)
          (hsPkgs.cipher-aes)
          (hsPkgs.certificate)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.crypto-random-api)
          (hsPkgs.pem)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      exes = {
        "Tests" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.cprng-aes)
            (hsPkgs.cipher-aes)
          ];
        };
      };
    };
  }