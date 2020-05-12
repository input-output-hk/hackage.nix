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
      identifier = { name = "free-functors"; version = "0.8.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "https://github.com/sjoerdvisscher/free-functors";
      url = "";
      synopsis = "Free functors, adjoint to functors that forget class constraints.";
      description = "A free functor is a left adjoint to a forgetful functor. It used to be the case\nthat the only category that was easy to work with in Haskell was Hask itself, so\nthere were no interesting forgetful functors.\n\nBut the new ConstraintKinds feature of GHC provides an easy way of creating\nsubcategories of Hask. That brings interesting opportunities for free (and cofree) functors.\n\nThe examples directory contains an implementation of non-empty lists as free semigroups,\nand automata as free actions. The standard example of free higher order functors is free monads,\nand this definition can be found in Data.Functor.HFree.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."algebraic-classes" or (errorHandler.buildDepError "algebraic-classes"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }