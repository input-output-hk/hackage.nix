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
      identifier = { name = "monad-coroutine"; version = "0.6.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010 Mario Blazevic";
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
          (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }