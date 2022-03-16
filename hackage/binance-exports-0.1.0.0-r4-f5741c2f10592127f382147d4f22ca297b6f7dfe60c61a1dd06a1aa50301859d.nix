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
      identifier = { name = "binance-exports"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/binance-exports#readme";
      url = "";
      synopsis = "Generate CSV Exports of your Binance Trade History.";
      description = "@binance-exports@ is a CLI program that queries the Binance.us API for your\nTrade History & exports all trades to a CSV file.\n\nSometime during February 2022, Binance removed their @Trade History@ page,\nalong with the ability to export your completed trades. The @Order History@\nexport is still available, but the format is more difficult to parse.\n\nThis package contains a replacement executable for the @Trade History@\nexport, generating CSVs with an almost-identical format. There are two\ndifferences: we split the trade symbol into two separate asset columns &\ninclude the trade ID.\n\nYou can install @binance-exports@ with Stack: @stack install --resolver\nnightly binance-exports@. Then run the following to print out your trades\nfor a given symbol:\n\n@\n$ binance-exports -k \\<API_KEY\\> -s \\<API_SECRET\\> SOLUSD\ntime,base-asset,quote-asset,type,price,quantity,total,fee,fee-currency,trade-id\n2022-03-01 21:20:44,SOL,USD,BUY,42.2424,0.42,42.90010000,0.0009001,BNB,9001\n@\n\nSee @binance-exports --help@ for additional options.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytedump" or (errorHandler.buildDepError "bytedump"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "binance-exports" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binance-exports" or (errorHandler.buildDepError "binance-exports"))
            ];
          buildable = true;
          };
        };
      tests = {
        "binance-exports-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binance-exports" or (errorHandler.buildDepError "binance-exports"))
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