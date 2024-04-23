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
      identifier = { name = "monad-coroutine"; version = "0.9.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010-2018 Mario Blazevic";
      maintainer = "blamario@protonmail.com";
      author = "Mario Blazevic";
      homepage = "https://hub.darcs.net/blamario/SCC.wiki/";
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
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
        ];
        buildable = true;
      };
    };
  }