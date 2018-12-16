{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { benchmark = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "crypto-pubkey";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-pubkey";
      url = "";
      synopsis = "Public Key cryptography";
      description = "Public Key cryptography\n\nSupports RSA PKCS15, RSA OAEP, RSA PSS, DSA, ElGamal signature.\n\nAlso have primitive support for Diffie Hellman, and ElGamal encryption";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.crypto-random)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.cryptohash)
          (hsPkgs.crypto-numbers)
        ];
      };
      tests = {
        "test-crypto-pubkey" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.byteable)
            (hsPkgs.cryptohash)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.crypto-numbers)
            (hsPkgs.crypto-random)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
      benchmarks = {
        "bench-crypto-pubkey" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.crypto-random)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }