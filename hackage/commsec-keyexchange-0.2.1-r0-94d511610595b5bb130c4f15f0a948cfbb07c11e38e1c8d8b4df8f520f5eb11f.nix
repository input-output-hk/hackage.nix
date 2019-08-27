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
      identifier = { name = "commsec-keyexchange"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "https://github.com/TomMD/commsec-keyExchange";
      url = "";
      synopsis = "Key agreement for commsec.";
      description = "Use RSA keys to authenticate a key exchange to\nestablish a commsec 'Connection'.  This package comes with\nthe same warnings as 'commsec': There is minimal testing\nand no code review.  Use at your own risk.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."crypto-pubkey-types" or (buildDepError "crypto-pubkey-types"))
          (hsPkgs."cipher-aes128" or (buildDepError "cipher-aes128"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."commsec" or (buildDepError "commsec"))
          (hsPkgs."RSA" or (buildDepError "RSA"))
          (hsPkgs."cryptohash-cryptoapi" or (buildDepError "cryptohash-cryptoapi"))
          (hsPkgs."DRBG" or (buildDepError "DRBG"))
          (hsPkgs."monadcryptorandom" or (buildDepError "monadcryptorandom"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          ];
        };
      };
    }