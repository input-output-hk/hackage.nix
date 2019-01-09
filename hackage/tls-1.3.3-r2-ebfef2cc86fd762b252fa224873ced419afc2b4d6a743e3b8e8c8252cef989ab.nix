{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { compat = true; network = true; hans = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "tls"; version = "1.3.3"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-tls";
      url = "";
      synopsis = "TLS/SSL protocol native implementation (Server and Client)";
      description = "Native Haskell TLS and SSL protocol implementation for server and client.\n\nThis provides a high-level implementation of a sensitive security protocol,\neliminating a common set of security issues through the use of the advanced\ntype system, high level constructions and common Haskell features.\n\nCurrently implement the SSL3.0, TLS1.0, TLS1.1 and TLS1.2 protocol,\nand support RSA and Ephemeral (Elliptic curve and regular) Diffie Hellman key exchanges,\nand many extensions.\n\nSome debug tools linked with tls, are available through the\n<http://hackage.haskell.org/package/tls-debug/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.memory)
          (hsPkgs.cryptonite)
          (hsPkgs.asn1-types)
          (hsPkgs.asn1-encoding)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.x509-validation)
          (hsPkgs.async)
          ] ++ (pkgs.lib).optional (flags.network) (hsPkgs.network)) ++ (pkgs.lib).optional (flags.hans) (hsPkgs.hans);
        };
      tests = {
        "test-tls" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.cryptonite)
            (hsPkgs.bytestring)
            (hsPkgs.x509)
            (hsPkgs.x509-validation)
            (hsPkgs.tls)
            (hsPkgs.hourglass)
            ];
          };
        };
      benchmarks = {
        "bench-tls" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tls)
            (hsPkgs.x509)
            (hsPkgs.x509-validation)
            (hsPkgs.data-default-class)
            (hsPkgs.cryptonite)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.hourglass)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }