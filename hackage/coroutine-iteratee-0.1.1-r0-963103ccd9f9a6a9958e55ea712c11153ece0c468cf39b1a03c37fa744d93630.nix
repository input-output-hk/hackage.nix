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
      identifier = { name = "coroutine-iteratee"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010-2011 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "http://trac.haskell.org/SCC/wiki/coroutine-iteratee";
      url = "";
      synopsis = "Bridge between the monad-coroutine and iteratee packages.";
      description = "This package acts as a bidirectional bridge between two monad transformers: the Data.Iteratee.Base.Iteratee in the\niteratee package, and the Control.Monad.Coroutine.Coroutine in the monad-coroutine package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
        ];
        buildable = true;
      };
    };
  }