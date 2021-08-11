{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "bnb-staking-csvs"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/bnb-staking-csvs#readme";
      url = "";
      synopsis = "Generate CSV Exports of Your BNB Staking Rewards.";
      description = "@bnb-staking-csvs@ is a CLI program that queries the Binance.org API for\nall of a delegator's rewards and exports the resulting data to a CSV file.\n\nYou can install @bnb-staking-csvs@ with Stack: @stack install --resolver\nnightly bnb-staking-csvs@. Then run the following to print out your\nrewards in CSV format:\n\n@\nbnb-staking-csvs \\<DELEGATOR_PUBKEY>\n@\n\nSee @bnb-staking-csvs --help@ for additional options.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."cointracking-imports" or (errorHandler.buildDepError "cointracking-imports"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "bnb-staking-csvs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bnb-staking-csvs" or (errorHandler.buildDepError "bnb-staking-csvs"))
            ];
          buildable = true;
          };
        };
      tests = {
        "bnb-staking-csvs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bnb-staking-csvs" or (errorHandler.buildDepError "bnb-staking-csvs"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }