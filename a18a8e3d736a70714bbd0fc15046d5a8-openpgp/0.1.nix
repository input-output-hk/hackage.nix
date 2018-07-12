{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "openpgp";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2011 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "http://github.com/singpolyma/OpenPGP-Haskell";
        url = "";
        synopsis = "Implementation of the OpenPGP message format";
        description = "This is an OpenPGP library inspired by my work on OpenPGP-PHP <http://github.com/bendiken/openpgp-php>.\nIt defines types Message and Packet to represent OpenPGP messages as series\nof packets and then defines instances of Data.Binary for each to facilitate\nencoding/decoding.\n\nThere is also a wrapper around <http://hackage.haskell.org/package/Crypto>\nthat currently does fingerprint generation and signature verification.\n\nIt is intended that you use qualified imports with this library.  If importing both modules, something like this will do:\n\n> import qualified Data.OpenPGP as OpenPGP\n> import qualified Data.OpenPGP.Crypto as OpenPGP";
        buildType = "Simple";
      };
      components = {
        "openpgp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.binary
            hsPkgs.zlib
            hsPkgs.bzlib
            hsPkgs.Crypto
          ];
        };
      };
    }