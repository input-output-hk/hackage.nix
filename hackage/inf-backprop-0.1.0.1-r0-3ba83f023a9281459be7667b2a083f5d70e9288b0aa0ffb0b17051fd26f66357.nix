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
      identifier = { name = "inf-backprop"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023 Alexey Tochin";
      maintainer = "Alexey.Tochin@gmail.com";
      author = "Alexey Tochin";
      homepage = "";
      url = "";
      synopsis = "Automatic differentiation and backpropagation.";
      description = "![Second order derivative of a composition](docs/doc/images/composition_second_derivative.png)\n\nAutomatic differentiation and backpropagation.\nWe do not attract gradient tape.\nInstead, the differentiation operator is defined directly as a map between differentiable function objects.\nSuch functions are to be combined in arrow style using '(>>>)', '(***)', 'first', etc.\n\nThe original purpose of the package is an automatic backpropagation differentiation component\nfor a functional type-dependent library for deep machine learning.\nSee [tutorial](docs/InfBackprop-Tutorial.html) details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."isomorphism-class" or (errorHandler.buildDepError "isomorphism-class"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."simple-expr" or (errorHandler.buildDepError "simple-expr"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."isomorphism-class" or (errorHandler.buildDepError "isomorphism-class"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."simple-expr" or (errorHandler.buildDepError "simple-expr"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }