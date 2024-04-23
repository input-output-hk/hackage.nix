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
      identifier = { name = "functor-monad"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2023 Koji Miyazato";
      maintainer = "Koji Miyazato <viercc@gmail.com>";
      author = "Koji Miyazato";
      homepage = "https://github.com/viercc/functor-monad/tree/main/functor-monad";
      url = "";
      synopsis = "FFunctor: functors on (the usual) Functors";
      description = "@FFunctor@ is a type class for endofunctors on the category of @Functor@s.\n\n@FMonad@ is a type class for monads in the category of @Functor@s.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."auto-lift-classes" or (errorHandler.buildDepError "auto-lift-classes"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."free-applicative-t" or (errorHandler.buildDepError "free-applicative-t"))
          (hsPkgs."day-comonoid" or (errorHandler.buildDepError "day-comonoid"))
        ];
        buildable = true;
      };
      tests = {
        "functor-monad-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."functor-monad" or (errorHandler.buildDepError "functor-monad"))
          ];
          buildable = true;
        };
      };
    };
  }