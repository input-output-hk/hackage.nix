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
      identifier = { name = "hledger-stockquotes"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/hledger-stockquotes#readme";
      url = "";
      synopsis = "Generate HLedger Price Directives From Daily Stock Quotes.";
      description = "@hledger-stockquotes@ is an addon for <https://hledger.org/ hledger> that\nreads your journal file, pulls the historical stock prices for commodities,\nand writes out a new journal file containing the respective price\ndirectives.\n\nThe <https://www.alphavantage.co/ AlphaVantage API> is used to fetch the\nstock quotes and you will need a\n<https://www.alphavantage.co/support/#api-key free API key> to use this\nprogram.\n\nYou can install @hledger-stockquotes@ with Stack: @stack install --resolver\nnightly hledger-stockquotes@. Then run @hledger-stockquotes --help@ to see\nthe usage instructions & all available options.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "hledger-stockquotes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."hledger-stockquotes" or (errorHandler.buildDepError "hledger-stockquotes"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hledger-stockquotes-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hledger-stockquotes" or (errorHandler.buildDepError "hledger-stockquotes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }