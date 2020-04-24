{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "openpgp"; version = "0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."bzlib" or ((hsPkgs.pkgs-errors).buildDepError "bzlib"))
          (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
          ];
        buildable = true;
        };
      };
    }