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
      specVersion = "1.9.2";
      identifier = { name = "haskoin-core"; version = "0.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "plaprade+hackage@gmail.com";
      author = "Philippe Laprade, Jean-Pierre Rupp";
      homepage = "http://github.com/haskoin/haskoin";
      url = "";
      synopsis = "Implementation of the core Bitcoin protocol features.";
      description = "Haskoin is a package implementing the core functionalities of the Bitcoin\nprotocol specifications. The following features are provided:\n\n* Hashing functions (sha-256, ripemd-160)\n* Base58 encoding\n* BIP32 extended key derivation and parsing (m/1'/2/3)\n* BIP39 mnemonic keys\n* ECDSA cryptographic primitives (using the C library libsecp256k1)\n* Script parsing and evaluation\n* Building and signing of standard transactions (regular, multisig, p2sh)\n* Parsing and manipulation of all Bitcoin protocol types\n* Bloom filters and partial merkle tree library (used in SPV wallets)\n* Comprehensive test suite\n\nA wallet implementation is available in haskoin-wallet which uses both this\npackage and the node implementation in haskoin-node.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."byteable" or (buildDepError "byteable"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."murmur3" or (buildDepError "murmur3"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."pbkdf" or (buildDepError "pbkdf"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."secp256k1" or (buildDepError "secp256k1"))
          (hsPkgs."largeword" or (buildDepError "largeword"))
          (hsPkgs."entropy" or (buildDepError "entropy"))
          ];
        };
      tests = {
        "test-haskoin-core" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."haskoin-core" or (buildDepError "haskoin-core"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."largeword" or (buildDepError "largeword"))
            (hsPkgs."secp256k1" or (buildDepError "secp256k1"))
            ];
          };
        };
      };
    }