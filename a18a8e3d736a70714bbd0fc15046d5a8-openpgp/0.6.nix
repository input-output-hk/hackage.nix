{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "openpgp";
          version = "0.6";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2011-2012 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "http://github.com/singpolyma/OpenPGP-Haskell";
        url = "";
        synopsis = "Implementation of the OpenPGP message format";
        description = "This is an OpenPGP library inspired by my work on OpenPGP libraries in\nRuby <https://github.com/singpolyma/openpgp>,\nPHP <http://github.com/singpolyma/openpgp-php>,\nand Python <https://github.com/singpolyma/OpenPGP-Python>.\n\nIt defines types to represent OpenPGP messages as a series of packets\nand then defines instances of Data.Binary for each to facilitate\nencoding/decoding.\n\nFor performing cryptography, see\n<http://hackage.haskell.org/package/openpgp-crypto-api> or\n<http://hackage.haskell.org/package/openpgp-Crypto>\n\nFor dealing with ASCII armor, see\n<http://hackage.haskell.org/package/openpgp-asciiarmor>\n\nIt is intended that you use qualified imports with this library.\n\n> import qualified Data.OpenPGP as OpenPGP";
        buildType = "Simple";
      };
      components = {
        openpgp = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.binary
            hsPkgs.zlib
            hsPkgs.bzlib
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.binary
              hsPkgs.zlib
              hsPkgs.bzlib
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }