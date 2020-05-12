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
      identifier = { name = "linear-code"; version = "0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "2018, Wanja Chresta";
      maintainer = "wanja dot hs at chrummibei dot ch";
      author = "Wanja Chresta";
      homepage = "https://github.com/wchresta/linear-code#readme";
      url = "";
      synopsis = "A simple library for linear codes (coding theory, error correction)";
      description = "Please see the README on GitHub at <https://github.com/wchresta/linear-code#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HaskellForMaths" or (errorHandler.buildDepError "HaskellForMaths"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."matrix-static" or (errorHandler.buildDepError "matrix-static"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          ];
        buildable = true;
        };
      tests = {
        "linear-code-test" = {
          depends = [
            (hsPkgs."HaskellForMaths" or (errorHandler.buildDepError "HaskellForMaths"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."linear-code" or (errorHandler.buildDepError "linear-code"))
            (hsPkgs."matrix-static" or (errorHandler.buildDepError "matrix-static"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }