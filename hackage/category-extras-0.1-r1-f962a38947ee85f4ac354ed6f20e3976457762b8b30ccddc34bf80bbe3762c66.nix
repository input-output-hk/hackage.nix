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
      specVersion = "1.0";
      identifier = { name = "category-extras"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2004--2008 Dave Menendez";
      maintainer = "dan.doel@gmail.com";
      author = "Dave Menendez";
      homepage = "http://code.haskell.org/~dolio/category-extras";
      url = "";
      synopsis = "Various modules and constructs inspired by category theory.";
      description = "A collection of modules implementing various ideas from\ncategory theory. Notable bits include: comonads, adjunctions,\nfunctor fixedpoints and various recursion operaters ala\n/Functional Programming with Bananas, Lenses, Envelopes\nand Barbed Wire/.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }