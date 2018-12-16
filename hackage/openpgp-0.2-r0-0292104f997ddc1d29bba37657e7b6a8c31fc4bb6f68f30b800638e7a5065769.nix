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
        name = "openpgp";
        version = "0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2011 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "http://github.com/singpolyma/OpenPGP-Haskell";
      url = "";
      synopsis = "Implementation of the OpenPGP message format";
      description = "This is an OpenPGP library inspired by my work on OpenPGP libraries in\nRuby <https://github.com/singpolyma/openpgp>,\nPHP <http://github.com/singpolyma/openpgp-php>,\nand Python <https://github.com/singpolyma/OpenPGP-Python>.\n\nIt defines types to represent OpenPGP messages as a series of packets\nand then defines instances of Data.Binary for each to facilitate\nencoding/decoding.\n\nThere is also a wrapper around <http://hackage.haskell.org/package/Crypto>\nthat currently does fingerprint generation, signature generation, and\nsignature verification (for RSA keys only).\n\nIt is intended that you use qualified imports with this library.  If importing\nboth modules, something like this will do:\n\n> import qualified Data.OpenPGP as OpenPGP\n> import qualified Data.OpenPGP.Crypto as OpenPGP";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.binary)
          (hsPkgs.zlib)
          (hsPkgs.bzlib)
          (hsPkgs.Crypto)
        ];
      };
    };
  }