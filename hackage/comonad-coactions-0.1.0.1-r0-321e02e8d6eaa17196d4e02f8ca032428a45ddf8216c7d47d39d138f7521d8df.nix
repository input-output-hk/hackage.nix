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
      identifier = { name = "comonad-coactions"; version = "0.1.0.1"; };
      license = "LGPL-2.0-or-later";
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
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "elementary" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."comonad-coactions" or (errorHandler.buildDepError "comonad-coactions"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "higher-range" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."comonad-coactions" or (errorHandler.buildDepError "comonad-coactions"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "life" = {
          depends = [
            (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."comonad-coactions" or (errorHandler.buildDepError "comonad-coactions"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
            (hsPkgs."monad-actions" or (errorHandler.buildDepError "monad-actions"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."termbox-tea" or (errorHandler.buildDepError "termbox-tea"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
      tests = {
        "comonad-coactions-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."comonad-coactions" or (errorHandler.buildDepError "comonad-coactions"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }