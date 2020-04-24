{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base58-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base58-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cardano-binary" or ((hsPkgs.pkgs-errors).buildDepError "cardano-binary"))
          (hsPkgs."cardano-crypto" or ((hsPkgs.pkgs-errors).buildDepError "cardano-crypto"))
          (hsPkgs."cardano-crypto-wrapper" or ((hsPkgs.pkgs-errors).buildDepError "cardano-crypto-wrapper"))
          (hsPkgs."cardano-ledger" or ((hsPkgs.pkgs-errors).buildDepError "cardano-ledger"))
          (hsPkgs."cborg" or ((hsPkgs.pkgs-errors).buildDepError "cborg"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "cardano-tx" = {
          depends = [
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cardano-transactions" or ((hsPkgs.pkgs-errors).buildDepError "cardano-transactions"))
            (hsPkgs."cborg" or ((hsPkgs.pkgs-errors).buildDepError "cborg"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cardano-crypto-wrapper" or ((hsPkgs.pkgs-errors).buildDepError "cardano-crypto-wrapper"))
            (hsPkgs."cardano-ledger" or ((hsPkgs.pkgs-errors).buildDepError "cardano-ledger"))
            (hsPkgs."cardano-ledger-test" or ((hsPkgs.pkgs-errors).buildDepError "cardano-ledger-test"))
            (hsPkgs."cardano-transactions" or ((hsPkgs.pkgs-errors).buildDepError "cardano-transactions"))
            (hsPkgs."cborg" or ((hsPkgs.pkgs-errors).buildDepError "cborg"))
            (hsPkgs."hedgehog-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog-quickcheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.cardano-tx or (pkgs.buildPackages.cardano-tx or ((hsPkgs.pkgs-errors).buildToolDepError "cardano-tx")))
            ];
          buildable = true;
          };
        };
      };
    }