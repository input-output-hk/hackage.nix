{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "x509-util";
        version = "1.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-certificate";
      url = "";
      synopsis = "Utility for X509 certificate and chain";
      description = "utility to parse, show, validate, sign and produce X509 certificates and chain.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "x509-util" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.crypto-pubkey-types)
            (hsPkgs.x509)
            (hsPkgs.x509-store)
            (hsPkgs.x509-system)
            (hsPkgs.x509-validation)
            (hsPkgs.asn1-types)
            (hsPkgs.asn1-encoding)
            (hsPkgs.pem)
            (hsPkgs.cryptohash)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }