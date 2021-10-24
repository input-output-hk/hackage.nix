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
      specVersion = "1.22";
      identifier = { name = "poker-base"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Santiago Weight";
      maintainer = "santiago.weight@gmail.com";
      author = "Santiago Weight";
      homepage = "https://github.com/santiweight/poker-base#readme";
      url = "";
      synopsis = "A library for core poker types";
      description = "This package provides datatypes and support for poker computation in Haskell.\n\n== Usage\n\n>>> import Poker\n>>> Just h = mkHole (Card Ace Club) (Card Two Diamond)\n>>> holeToShortTxt h\n\"Ac2d\"\n\nPlease see the README on GitHub at <https://github.com/santiweight/poker-base#readme> for an overview.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."safe-money" or (errorHandler.buildDepError "safe-money"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."generic-arbitrary" or (errorHandler.buildDepError "generic-arbitrary"))
          ];
        buildable = true;
        };
      tests = {
        "all-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."poker-base" or (errorHandler.buildDepError "poker-base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover.components.exes.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }