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
        name = "tls-debug";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-tls-debug";
      url = "";
      synopsis = "Set of programs for TLS testing and debugging";
      description = "A set of program to test and debug various aspect of the TLS package.\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tls-stunnel" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.certificate)
            (hsPkgs.cprng-aes)
            (hsPkgs.tls)
            (hsPkgs.tls-extra)
          ];
        };
        "tls-checkciphers" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.cprng-aes)
            (hsPkgs.certificate)
            (hsPkgs.tls)
            (hsPkgs.tls-extra)
          ];
        };
        "tls-retrievecertificate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.time)
            (hsPkgs.cprng-aes)
            (hsPkgs.certificate)
            (hsPkgs.tls)
            (hsPkgs.tls-extra)
          ];
        };
        "tls-simpleclient" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.cprng-aes)
            (hsPkgs.certificate)
            (hsPkgs.tls)
            (hsPkgs.tls-extra)
          ];
        };
      };
    };
  }