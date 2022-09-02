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
      identifier = { name = "HasBigDecimal"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "2018-2022 Thomas Mahler";
      maintainer = "thma@apache.org";
      author = "Thomas Mahler";
      homepage = "https://github.com/thma/HasBigDecimal#readme";
      url = "";
      synopsis = "A library for arbitrary precision decimal numbers.";
      description = "Please see the README on GitHub at <https://github.com/thma/HasBigDecimal#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "HasBigDecimal-Demo" = {
          depends = [
            (hsPkgs."HasBigDecimal" or (errorHandler.buildDepError "HasBigDecimal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "benchmark" = {
          depends = [
            (hsPkgs."HasBigDecimal" or (errorHandler.buildDepError "HasBigDecimal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      tests = {
        "HasBigDecimal-test" = {
          depends = [
            (hsPkgs."HasBigDecimal" or (errorHandler.buildDepError "HasBigDecimal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }