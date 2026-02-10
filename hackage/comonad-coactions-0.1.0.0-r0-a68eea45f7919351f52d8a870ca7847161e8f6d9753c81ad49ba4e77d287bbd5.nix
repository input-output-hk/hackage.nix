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
    flags = { examples = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "comonad-coactions"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "noiioiu@cocaine.ninja";
      author = "noiioiu";
      homepage = "https://codeberg.org/noiioiu/comonad-coactions";
      url = "";
      synopsis = "Coactions of comonads on functors";
      description = "This package defines classes for left and right coactions of\ncomonads on functors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
        ];
        buildable = true;
      };
      exes = {
        "ca" = {
          depends = [
            (hsPkgs."comonad-coactions" or (errorHandler.buildDepError "comonad-coactions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "life" = {
          depends = [
            (hsPkgs."comonad-coactions" or (errorHandler.buildDepError "comonad-coactions"))
            (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."termbox-tea" or (errorHandler.buildDepError "termbox-tea"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
      tests = {
        "comonad-coactions-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."comonad-coactions" or (errorHandler.buildDepError "comonad-coactions"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }