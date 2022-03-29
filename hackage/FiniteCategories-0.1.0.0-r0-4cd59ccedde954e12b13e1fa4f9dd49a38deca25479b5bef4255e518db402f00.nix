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
      identifier = { name = "FiniteCategories"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "guillaumesabbagh@protonmail.com";
      author = "Guillaume Sabbagh";
      homepage = "https://gitlab.utc.fr/gsabbagh/FiniteCategories";
      url = "";
      synopsis = "Finite categories and usual categorical constructions on them.";
      description = "This package provides tools to create categories at the value level. This is different from the __Hask__ category where types are objects in a category with infinite objects and arrows, here we construct categories where objects and arrows are arbitrary values so that we can change categories during runtime. Each category implements three functions following the category structure axioms : @ob@ which returns objects of the category, @ar@ which returns arrows between two objects of the category and @identity@ which returns the identity of an object. Thanks to theses functions, we can construct automatically all the usual constructions on the categories (limits and colimits, adjunctions, Yoneda embedding, etc.) Functors are different from usual @Functor@ typeclass, we store functors as mapping between objects and morphisms of two categories. This package is also different from the package @data-category@ because we can enumerate objects and arrows in a category.  This allows us to construct limit, colimits, adjunctions, etc. automatically for arbitrary finite categories. On the other hand, we loose typecheck at compilation time which ensures that composition is sound in __Hask__, composition in our package might lead to an error raised during runtime. See the Readme file for installation help.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "FiniteCategories-test" = {
          depends = [
            (hsPkgs."FiniteCategories" or (errorHandler.buildDepError "FiniteCategories"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }