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
      specVersion = "1.22";
      identifier = { name = "semialign-indexed"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "C. McCann, Oleg Grenrus";
      homepage = "https://github.com/haskellari/these";
      url = "";
      synopsis = "SemialignWithIndex, i.e. izipWith and ialignWith";
      description = "This package is deprecated.\nIt simply re-exports [semialign](https://hackage.haskell.org/package/semialign)\n(and adds a @lens@ constraint).\n\nThis package provided @SemialignWithIndex@ with two members\n\n@\nclass (FunctorWithIndex i f, Semialign f) => SemialignWithIndex i f | f -> i where\n\\    ialignWith :: (i -> These a b -> c) -> f a -> f b -> f c\n@\n\n@\nclass (SemialignWithIndex i f, Zip f) => ZipWithIndex i f | f -> i where\n\\    izipWith   :: (i -> a -> b -> c)    -> f a -> f b -> f c\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }