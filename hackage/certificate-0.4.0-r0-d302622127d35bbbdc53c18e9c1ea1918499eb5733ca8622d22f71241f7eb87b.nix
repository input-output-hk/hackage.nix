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
        version = "0.4.0";
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
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.asn1-data)
          (hsPkgs.base64-bytestring)
        ];
      };
      exes = {
        "certificate" = {
          depends  = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.cmdargs)
            (hsPkgs.text)
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