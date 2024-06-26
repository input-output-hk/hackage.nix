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
      specVersion = "1.10";
      identifier = { name = "HasBigDecimal"; version = "0.1.1"; };
      license = "Apache-2.0";
      copyright = "2018 Thomas Mahler";
      maintainer = "thma@apache.org";
      author = "Thomas Mahler";
      homepage = "https://github.com/thma/HasBigDecimal#readme";
      url = "";
      synopsis = "A library for arbitrary precision decimal numbers.";
      description = "A native Haskell implementation of arbitrary precicion decimal numbers, based on Haskell Integers. Inspired by Java BigDecimals";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "HasBigDecimal-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HasBigDecimal" or (errorHandler.buildDepError "HasBigDecimal"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }