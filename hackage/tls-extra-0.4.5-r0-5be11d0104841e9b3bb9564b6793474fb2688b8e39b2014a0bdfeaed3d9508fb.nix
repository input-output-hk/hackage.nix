{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test = false;
      bench = false;
      executable = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "tls-extra";
        version = "0.4.5";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-tls-extra";
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
          (hsPkgs.crypto-api)
          (hsPkgs.cryptocipher)
          (hsPkgs.certificate)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      exes = {
        "stunnel" = {
          depends  = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.network)
            (hsPkgs.cmdargs)
            (hsPkgs.cprng-aes)
            (hsPkgs.pem)
          ];
        };
        "checkciphers" = {
          depends  = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.network)
            (hsPkgs.cmdargs)
            (hsPkgs.cprng-aes)
          ];
        };
        "retrievecertificate" = {
          depends  = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.network)
            (hsPkgs.cmdargs)
            (hsPkgs.cprng-aes)
          ];
        };
        "simpleclient" = {
          depends  = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.network)
            (hsPkgs.cmdargs)
            (hsPkgs.cprng-aes)
          ];
        };
        "Tests" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.cprng-aes)
          ];
        };
      };
    };
  }