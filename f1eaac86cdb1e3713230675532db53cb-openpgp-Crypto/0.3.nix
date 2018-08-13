{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "openpgp-Crypto";
        version = "0.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2011-2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "http://github.com/singpolyma/OpenPGP-Crypto";
      url = "";
      synopsis = "Implementation of cryptography for use with OpenPGP using the Crypto library";
      description = "This is a wrapper around <http://hackage.haskell.org/package/Crypto>\nthat currently does fingerprint generation, signature generation, and\nsignature verification (for RSA keys only).\n\nIt is indended to be used with <http://hackage.haskell.org/openpgp>\n\nIt is intended that you use qualified imports with this library.\n\n> import qualified Data.OpenPGP.Crypto as OpenPGP";
      buildType = "Simple";
    };
    components = {
      "openpgp-Crypto" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.binary)
          (hsPkgs.openpgp)
          (hsPkgs.Crypto)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.binary)
            (hsPkgs.openpgp)
            (hsPkgs.Crypto)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }