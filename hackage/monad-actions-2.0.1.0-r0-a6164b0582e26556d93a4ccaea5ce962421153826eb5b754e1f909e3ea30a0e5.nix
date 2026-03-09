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
      identifier = { name = "monad-actions"; version = "2.0.1.0"; };
      license = "LGPL-2.0-or-later";
      copyright = "";
      maintainer = "noiioiu@cocaine.ninja";
      author = "noiioiu";
      homepage = "https://codeberg.org/noiioiu/monad-actions";
      url = "";
      synopsis = "Actions of monads on functors";
      description = "This package defines classes for left and right actions of\nmonads on functors.  It also includes modules for using\nmonad actions with qualified do notation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
        ];
        buildable = true;
      };
      exes = {
        "calculator" = {
          depends = [
            (hsPkgs."monad-actions" or (errorHandler.buildDepError "monad-actions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "calculator-records" = {
          depends = [
            (hsPkgs."monad-actions" or (errorHandler.buildDepError "monad-actions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
      tests = {
        "monad-actions-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
            (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
            (hsPkgs."monad-actions" or (errorHandler.buildDepError "monad-actions"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }