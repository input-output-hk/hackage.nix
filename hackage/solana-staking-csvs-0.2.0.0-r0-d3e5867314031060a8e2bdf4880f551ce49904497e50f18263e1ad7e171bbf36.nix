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
      identifier = { name = "solana-staking-csvs"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021-2025 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/solana-staking-csvs#readme";
      url = "";
      synopsis = "Generate CSV Exports of your Solana Staking Rewards.";
      description = "@solana-staking-csvs@ is a CLI program that queries the Solana blockchain\nfor an account's staking accounts and exports all their staking rewards to\na CSV file.\n\nThe <https://solanabeach.io/ Solana Beach API> is used to fetch data from\nthe blockchain and you will need a\n<https://github.com/solana-beach/api free API key> to use this program.\n\nYou can install @solana-staking-csvs@ with Stack: @stack install --resolver\nnightly solana-staking-csvs@. Then run the following to print out an\naccount's rewards in CSV format:\n\n@\nsolana-staking-csvs \\<API_KEY> \\<ACCOUNT_PUBKEY>\n@\n\nSee @solana-staking-csvs --help@ for additional options.";
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
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "solana-staking-csvs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."solana-staking-csvs" or (errorHandler.buildDepError "solana-staking-csvs"))
          ];
          buildable = true;
        };
      };
      tests = {
        "solana-staking-csvs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."solana-staking-csvs" or (errorHandler.buildDepError "solana-staking-csvs"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }