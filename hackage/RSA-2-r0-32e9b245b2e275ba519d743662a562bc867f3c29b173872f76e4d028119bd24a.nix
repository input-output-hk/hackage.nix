{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { oldbase = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "RSA";
        version = "2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Wick <awick@galois.com>";
      author = "Adam Wick <awick@galois.com>";
      homepage = "";
      url = "";
      synopsis = "Implementation of RSA, using the padding schemes of PKCS#1 v2.1.";
      description = "This library implements the RSA encryption and signature\nalgorithms for arbitrarily-sized ByteStrings. While the\nimplementations work, they are not necessarily the fastest ones\non the planet. Particularly key generation. The algorithms\nincluded are based of RFC 3447, or the Public-Key Cryptography\nStandard for RSA, version 2.1 (a.k.a, PKCS#1 v2.1).";
      buildType = "Simple";
    };
    components = {
      "RSA" = {
        depends  = [
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.crypto-api)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.monadcryptorandom)
        ] ++ [
          (hsPkgs.base)
          (hsPkgs.pureMD5)
          (hsPkgs.SHA)
        ];
      };
      tests = {
        "test-RSA" = {
          depends  = [
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.crypto-api)
            (hsPkgs.crypto-pubkey-types)
            (hsPkgs.DRBG)
            (hsPkgs.QuickCheck)
            (hsPkgs.RSA)
            (hsPkgs.tagged)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ] ++ [
            (hsPkgs.base)
            (hsPkgs.pureMD5)
            (hsPkgs.SHA)
          ];
        };
      };
    };
  }