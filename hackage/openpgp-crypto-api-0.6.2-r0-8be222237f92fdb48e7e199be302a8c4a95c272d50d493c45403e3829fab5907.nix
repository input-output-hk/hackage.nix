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
      specVersion = "1.8";
      identifier = {
        name = "openpgp-crypto-api";
        version = "0.6.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "http://github.com/singpolyma/OpenPGP-CryptoAPI";
      url = "";
      synopsis = "Implement cryptography for OpenPGP using crypto-api compatible libraries";
      description = "This is a wrapper around <http://hackage.haskell.org/package/crypto-api>\nand related libraries that currently does fingerprint generation, signature\ngeneration, signature verification, and both asymmetric and symmetric\nencryption and decryption.\n\nIt is indended to be used with <http://hackage.haskell.org/package/openpgp>\n\nIt is intended that you use qualified imports with this library.\n\n> import qualified Data.OpenPGP.CryptoAPI as OpenPGP";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.openpgp)
          (hsPkgs.crypto-api)
          (hsPkgs.tagged)
          (hsPkgs.cryptocipher)
          (hsPkgs.cryptohash)
          (hsPkgs.cereal)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.utf8-string)
            (hsPkgs.openpgp)
            (hsPkgs.crypto-api)
            (hsPkgs.tagged)
            (hsPkgs.cryptocipher)
            (hsPkgs.cryptohash)
            (hsPkgs.cereal)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }