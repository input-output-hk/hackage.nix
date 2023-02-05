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
      specVersion = "2.0";
      identifier = { name = "yahoo-prices"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "alojzy.leszcz@gmail.com";
      author = "Alojzy Leszcz";
      homepage = "";
      url = "";
      synopsis = "A wrapper around Yahoo API for downloading market data.";
      description = "It's a simple wrapper around Yahoo Finance API, that allows to fetch\nmarket data for various financial instruments from Yahoo website.\n\nThe same data can be viewed in \"Historic Data\" section.\nAn example for the `SPY` ETF can be found here: https://finance.yahoo.com/quote/SPY/history?p=SPY.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yahoo-prices".components.sublibs.yahoo-prices-utils or (errorHandler.buildDepError "yahoo-prices:yahoo-prices-utils"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          ];
        buildable = true;
        };
      sublibs = {
        "yahoo-prices-utils" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "yahoo-prices-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."yahoo-prices" or (errorHandler.buildDepError "yahoo-prices"))
            (hsPkgs."yahoo-prices".components.sublibs.yahoo-prices-utils or (errorHandler.buildDepError "yahoo-prices:yahoo-prices-utils"))
            ];
          buildable = true;
          };
        };
      };
    }