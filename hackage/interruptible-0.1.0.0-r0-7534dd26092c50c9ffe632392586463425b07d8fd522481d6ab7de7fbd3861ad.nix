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
      identifier = { name = "interruptible"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcos@marcosdumay.com";
      author = "Marcos Dumay de Medeiros";
      homepage = "https://sealgram.com/git/haskell/interruptible/";
      url = "";
      synopsis = "Monad transformers that can be run and resumed later, conserving their context.";
      description = "Given an inner monad and a transformer:\n> (Monad m, MonadTrans t)\nIf @t@ is an interruptible transformer, it becomes possible to intercalate executions\non the @t@ context with executions over the inner monad @m@ by breaking the execution\non @t@ and resuming it later.\n\nInterruptible monads implement the @runI@ function so that, given @f :: a -> t m b@ and\n@g :: b -> t m c@, @resume (f >>= g)@ is equivalent to @\\x -> resume f x >>= resume g@.\n\nThat makes it possible to intercalate the execution of different monads, and even to\nreturn a monadic context for another function to resume it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
        ];
        buildable = true;
      };
      tests = {
        "all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."interruptible" or (errorHandler.buildDepError "interruptible"))
          ];
          buildable = true;
        };
      };
    };
  }