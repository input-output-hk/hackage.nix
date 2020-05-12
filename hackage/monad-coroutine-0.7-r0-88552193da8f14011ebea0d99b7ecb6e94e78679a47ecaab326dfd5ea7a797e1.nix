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
      specVersion = "1.2";
      identifier = { name = "monad-coroutine"; version = "0.7"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010-2011 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "http://trac.haskell.org/SCC/wiki/monad-coroutine";
      url = "";
      synopsis = "Coroutine monad transformer for suspending and resuming monadic computations";
      description = "This package defines a monad transformer, applicable to any monad, that allows the monadic computation to suspend and\nto be later resumed. The transformer is parameterized by an arbitrary functor, used to store the suspended\ncomputation's resumption.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
          (hsPkgs."incremental-parser" or (errorHandler.buildDepError "incremental-parser"))
          ];
        buildable = true;
        };
      };
    }