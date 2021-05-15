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
      identifier = { name = "mixed-types-num"; version = "0.5.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2021 Michal Konecny";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/mixed-types-num#readme";
      url = "";
      synopsis = "Alternative Prelude with numeric and logic expressions typed bottom-up";
      description = "Please see the README on GitHub at <https://github.com/michalkonecny/mixed-types-num#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-smallcheck" or (errorHandler.buildDepError "hspec-smallcheck"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "mixed-types-num-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-smallcheck" or (errorHandler.buildDepError "hspec-smallcheck"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }