let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."bzlib" or (buildDepError "bzlib"))
          (hsPkgs."Crypto" or (buildDepError "Crypto"))
          ];
        };
      };
    }