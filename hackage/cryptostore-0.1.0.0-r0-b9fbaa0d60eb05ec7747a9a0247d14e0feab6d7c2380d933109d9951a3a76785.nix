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
      specVersion = "1.10";
      identifier = {
        name = "cryptostore";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Olivier Chéron";
      maintainer = "olivier.cheron@gmail.com";
      author = "Olivier Chéron";
      homepage = "https://github.com/ocheron/cryptostore";
      url = "";
      synopsis = "Serialization of cryptographic data types";
      description = "Haskell implementation of PKCS \\#8, PKCS \\#12 and CMS\n(Cryptographic Message Syntax).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.basement)
          (hsPkgs.memory)
          (hsPkgs.cryptonite)
          (hsPkgs.pem)
          (hsPkgs.asn1-types)
          (hsPkgs.asn1-encoding)
          (hsPkgs.hourglass)
          (hsPkgs.x509)
        ];
      };
      tests = {
        "test-cryptostore" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.asn1-types)
            (hsPkgs.cryptonite)
            (hsPkgs.memory)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.hourglass)
            (hsPkgs.pem)
            (hsPkgs.x509)
            (hsPkgs.cryptostore)
          ];
        };
      };
    };
  }