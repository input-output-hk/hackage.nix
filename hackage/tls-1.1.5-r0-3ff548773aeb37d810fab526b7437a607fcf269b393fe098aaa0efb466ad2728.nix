{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { compat = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "tls";
        version = "1.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-tls";
      url = "";
      synopsis = "TLS/SSL protocol native implementation (Server and Client)";
      description = "Native Haskell TLS and SSL protocol implementation for server and client.\n\nThis provides a high-level implementation of a sensitive security protocol,\neliminating a common set of security issues through the use of the advanced\ntype system, high level constructions and common Haskell features.\n\nCurrently implement the SSL3.0, TLS1.0, TLS1.1 and TLS1.2 protocol,\nwith only RSA supported for Key Exchange.\n\nOnly core protocol available here, have a look at the\n<http://hackage.haskell.org/package/tls-extra/> package for default\nciphers, compressions and certificates functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.cryptohash)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.crypto-random)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.certificate)
        ];
      };
      tests = {
        "test-tls" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.cereal)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.cprng-aes)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.bytestring)
            (hsPkgs.certificate)
            (hsPkgs.tls)
            (hsPkgs.time)
            (hsPkgs.crypto-random)
          ];
        };
      };
    };
  }