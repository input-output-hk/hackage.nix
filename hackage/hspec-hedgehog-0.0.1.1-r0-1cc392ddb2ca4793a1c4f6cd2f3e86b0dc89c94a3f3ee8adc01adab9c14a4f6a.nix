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
      identifier = { name = "hspec-hedgehog"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/hspec-hedgehog#readme";
      url = "";
      synopsis = "Integrate Hedgehog and Hspec!";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/hspec-hedgehog#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
          ];
        buildable = true;
        };
      tests = {
        "hspec-hedgehog-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      };
    }