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
      identifier = { name = "indexed-traversable"; version = "0.1.4"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Edward Kmett";
      homepage = "";
      url = "";
      synopsis = "FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
      description = "This package provides three useful generalizations:\n\n@\nclass Functor f => FunctorWithIndex i f | f -> i where\n\\  imap :: (i -> a -> b) -> f a -> f b\n@\n\n@\nclass Foldable f => FoldableWithIndex i f | f -> i where\n\\  ifoldMap :: Monoid m => (i -> a -> m) -> f a -> m\n@\n\n@\nclass (FunctorWithIndex i t, FoldableWithIndex i t, Traversable t) => TraversableWithIndex i t | t -> i where\n\\  itraverse :: Applicative f => (i -> a -> f b) -> t a -> f (t b)\n@\n\nThis package contains instances for types in GHC boot libraries.\nFor some additional instances see [indexed-traversable-instances](https://hackage.haskell.org/package/indexed-traversable-instances).\n\nThe [keys](https://hackage.haskell.org/package/keys) package provides similar functionality,\nbut uses (associated) @TypeFamilies@ instead of @FunctionalDependencies@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "9.6")) (hsPkgs."foldable1-classes-compat" or (errorHandler.buildDepError "foldable1-classes-compat"));
        buildable = true;
      };
    };
  }