{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hspkcs11";
        version = "0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "denisenkom@gmail.com";
      author = "Mikhail Denisenko";
      homepage = "https://github.com/denisenkom/hspkcs11";
      url = "";
      synopsis = "Wrapper for PKCS #11 interface";
      description = "This package allows to call PKCS#11 provider libraries.  PKCS#11 is a C interface specification for cryptography providers, such as crypto tokens and HSMs";
      buildType = "Simple";
    };
    components = {
      "hspkcs11" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.RSA)
          (hsPkgs.crypto-api)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "pkcs11-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.testpack)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.RSA)
            (hsPkgs.crypto-api)
            (hsPkgs.cprng-aes)
            (hsPkgs.cipher-aes)
          ];
        };
      };
    };
  }