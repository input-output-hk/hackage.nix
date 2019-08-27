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
    flags = { openssh = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "crypto-pubkey-openssh"; version = "0.2.0"; };
      license = "MIT";
      copyright = "Fedor Gogolev <knsd@knsd.net>";
      maintainer = "Fedor Gogolev <knsd@knsd.net>";
      author = "Fedor Gogolev <knsd@knsd.net>\nMaxim Mitroshin <rocco66max@gmail.com>\nThomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "https://github.com/knsd/crypto-pubkey-openssh";
      url = "";
      synopsis = "OpenSSH public keys parser";
      description = "OpenSSH public keys parser";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."crypto-pubkey-types" or (buildDepError "crypto-pubkey-types"))
          (hsPkgs."pem" or (buildDepError "pem"))
          (hsPkgs."asn1-data" or (buildDepError "asn1-data"))
          ];
        };
      tests = {
        "crypto-pubkey-openssh-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."crypto-pubkey-types" or (buildDepError "crypto-pubkey-types"))
            (hsPkgs."pem" or (buildDepError "pem"))
            (hsPkgs."asn1-data" or (buildDepError "asn1-data"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        };
      };
    }