{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test = false;
      executable = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "tls";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "";
      url = "";
      synopsis = "TLS protocol for Server and Client sides";
      description = "Implementation of the TLS protocol, focusing on purity and more type-checking.\n\nCurrently implement only partially the TLS1.0 protocol. Not yet properly secure.\nDo not yet use as replacement to more mature implementation.";
      buildType = "Simple";
    };
    components = {
      "tls" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.cryptohash)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.haskell98)
          (hsPkgs.AES)
          (hsPkgs.RSA)
          (hsPkgs.spoon)
          (hsPkgs.cryptocipher)
          (hsPkgs.certificate)
        ];
      };
      exes = {
        "stunnel" = {
          depends  = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.network)
            (hsPkgs.haskell98)
            (hsPkgs.RSA)
          ];
        };
        "Tests" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }