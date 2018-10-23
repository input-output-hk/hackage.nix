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
        name = "certificate";
        version = "1.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-certificate";
      url = "";
      synopsis = "Certificates and Key Reader/Writer";
      description = "Certificates and Key reader/writer\n\nAt the moment only X509 certificate and unencrypted private key are supported,\nbut will include PGP certificate and pkcs8 private keys";
      buildType = "Simple";
    };
    components = {
      "certificate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.pem)
          (hsPkgs.asn1-data)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
      };
      exes = {
        "certificate" = {
          depends  = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.cmdargs)
            (hsPkgs.text)
            (hsPkgs.cryptohash)
            (hsPkgs.cryptocipher)
            (hsPkgs.directory)
          ];
        };
        "Tests" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }