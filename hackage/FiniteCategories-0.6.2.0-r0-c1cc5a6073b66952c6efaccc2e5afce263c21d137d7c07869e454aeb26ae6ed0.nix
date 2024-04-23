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
      specVersion = "3.0";
      identifier = { name = "FiniteCategories"; version = "0.6.2.0"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "guillaumesabbagh@protonmail.com";
      author = "Guillaume Sabbagh";
      homepage = "https://gitlab.utc.fr/gsabbagh/FiniteCategories";
      url = "";
      synopsis = "Finite categories and usual categorical constructions on them.";
      description = "This package provides tools to create categories at the value level. This is different from the __Hask__ category where types are objects in a category with an infinite collection of objects and functions, here we construct categories where objects and arrows are arbitrary values so that we can change categories during runtime. Each category implements two functions following the category structure axioms : @ar@ which returns arrows between two objects of the category and @identity@ which returns the identity of an object. A FiniteCategory implements an additional function : @ob@ which returns objects of the category. Thanks to these functions, we can construct automatically all the usual constructions on the categories (limits and colimits, adjunctions, Yoneda embedding, etc.) Functors are different from usual @Functor@ typeclass, we store functors as mapping between objects and morphisms of two categories. This package is also different from the package @data-category@ because we can enumerate objects and arrows in a finite category.  This allows us to construct limit, colimits, adjunctions, etc. automatically for arbitrary finite categories. On the other hand, we loose typecheck at compilation time which ensures that composition is sound in __Hask__, composition in our package might lead to an error raised during runtime. See the Readme file for installation help. See the package FiniteCategoriesGraphViz to visualize categories with graphviz.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."WeakSets" or (errorHandler.buildDepError "WeakSets"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      tests = {
        "FiniteCategories-test" = {
          depends = [
            (hsPkgs."FiniteCategories" or (errorHandler.buildDepError "FiniteCategories"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."WeakSets" or (errorHandler.buildDepError "WeakSets"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }