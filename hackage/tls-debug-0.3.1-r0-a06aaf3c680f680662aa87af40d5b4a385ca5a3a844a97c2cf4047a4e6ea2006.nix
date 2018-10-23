{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "tls-debug";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-tls";
      url = "";
      synopsis = "Set of programs for TLS testing and debugging";
      description = "A set of program to test and debug various aspect of the TLS package.\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tls-stunnel" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.x509-system)
            (hsPkgs.cprng-aes)
            (hsPkgs.data-default-class)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.tls)
          ];
        };
        "tls-retrievecertificate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.groom)
            (hsPkgs.time)
            (hsPkgs.pem)
            (hsPkgs.cprng-aes)
            (hsPkgs.x509)
            (hsPkgs.x509-system)
            (hsPkgs.x509-validation)
            (hsPkgs.tls)
          ];
        };
        "tls-simpleclient" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.data-default-class)
            (hsPkgs.cprng-aes)
            (hsPkgs.x509-system)
            (hsPkgs.tls)
          ];
        };
      };
    };
  }