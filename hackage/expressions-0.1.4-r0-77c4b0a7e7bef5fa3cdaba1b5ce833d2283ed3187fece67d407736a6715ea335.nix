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
      identifier = { name = "expressions"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Jakub Daniel";
      maintainer = "jakub.daniel@protonmail.com";
      author = "Jakub Daniel";
      homepage = "";
      url = "";
      synopsis = "Expressions and Formulae a la carte";
      description = "This package is aimed at providing means of fixing a first-order language and\ndeclaring sorted expressions and formulae, the types ensure the declared\nexpressions fall within the language.\n\nThis package pre-defines the common logical symbols for conjunction,\ndisjunction, negation, and universal and existential quantification as well\nas some specific non-logical symbols such as equality, addition of linear\ninteger arithmetic, and other. Common languages such as Lia and ALia\n(standard linear integer arithmetic and linear integer arithmetic with\narrays) come included.\n\nAn example of a formula declaration:\n\n> -- Let's state that zero is successor to no integer (while this would be\n> -- true for non-negative integers, stated this way it is clearly false, but\n> -- it still is a well-formed first-order statement)\n>\n> forall [var \"x\" :: Var 'IntegralSort] (cnst 0 ./=. var \"x\" .+. cnst 1) :: Lia 'BooleanSort\n\nLet's see what declarations the library rejects:\n\n> (var \"x\" :: Lia 'BooleanSort) .=. (var \"y\" :: Lia 'IntegralSort)\n> (var \"x\" :: Lia 'BooleanSort) .=. (var \"y\" :: ALia 'BooleanSort)\n> forall [var \"x\" :: Var 'IntegralSort] true :: QFLia 'BooleanSort";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."expressions" or (errorHandler.buildDepError "expressions"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }