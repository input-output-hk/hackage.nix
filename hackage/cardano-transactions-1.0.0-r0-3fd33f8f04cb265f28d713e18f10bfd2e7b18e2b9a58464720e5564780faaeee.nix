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
    flags = { release = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "cardano-transactions"; version = "1.0.0"; };
      license = "Apache-2.0";
      copyright = "2020 IOHK";
      maintainer = "operations@iohk.io";
      author = "IOHK";
      homepage = "https://github.com/input-output-hk/cardano-transactions#readme";
      url = "";
      synopsis = "Library utilities for constructing and signing Cardano transactions.";
      description = "Please see the README on GitHub at <https://github.com/input-output-hk/cardano-transactions>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base58-bytestring" or (buildDepError "base58-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cardano-binary" or (buildDepError "cardano-binary"))
          (hsPkgs."cardano-crypto" or (buildDepError "cardano-crypto"))
          (hsPkgs."cardano-crypto-wrapper" or (buildDepError "cardano-crypto-wrapper"))
          (hsPkgs."cardano-ledger" or (buildDepError "cardano-ledger"))
          (hsPkgs."cborg" or (buildDepError "cborg"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "cardano-tx" = {
          depends = [
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cardano-transactions" or (buildDepError "cardano-transactions"))
            (hsPkgs."cborg" or (buildDepError "cborg"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cardano-crypto-wrapper" or (buildDepError "cardano-crypto-wrapper"))
            (hsPkgs."cardano-ledger" or (buildDepError "cardano-ledger"))
            (hsPkgs."cardano-ledger-test" or (buildDepError "cardano-ledger-test"))
            (hsPkgs."cardano-transactions" or (buildDepError "cardano-transactions"))
            (hsPkgs."cborg" or (buildDepError "cborg"))
            (hsPkgs."hedgehog-quickcheck" or (buildDepError "hedgehog-quickcheck"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.cardano-tx or (pkgs.buildPackages.cardano-tx or (buildToolDepError "cardano-tx")))
            ];
          buildable = true;
          };
        };
      };
    }