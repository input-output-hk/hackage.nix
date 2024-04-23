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
      identifier = { name = "semialign-optics"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "C. McCann, Oleg Grenrus";
      homepage = "https://github.com/isomorphism/these";
      url = "";
      synopsis = "SemialignWithIndex, i.e. izipWith and ialignWith";
      description = "This package provides @SemialignWithIndex@ with two members\n\n@\nclass (FunctorWithIndex i f, Semialign f) => SemialignWithIndex i f | f -> i where\n\\    ialignWith :: (i -> These a b -> c) -> f a -> f b -> f c\n@\n\n@\nclass (SemialignWithIndex i f, Zip f) => ZipWithIndex i f | f -> i where\n\\    izipWith   :: (i -> a -> b -> c)    -> f a -> f b -> f c\n@\n\nSuperclass @FunctorWithIndex@ is from @optics-extra@ package.\nSee https://hackage.haskell.org/package/semialign-indexed for @lens@ variant.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."optics-extra" or (errorHandler.buildDepError "optics-extra"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
        ];
        buildable = true;
      };
    };
  }