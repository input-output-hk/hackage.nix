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
      identifier = { name = "coroutine-enumerator"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "http://trac.haskell.org/SCC/wiki/coroutine-enumerator";
      url = "";
      synopsis = "Bridge between the monad-coroutine and enumerator packages.";
      description = "This package acts as a bidirectional bridge between two monad transformers: the Data.Enumerator.Iteratee in the\nenumerator package, and the Control.Monad.Coroutine.Coroutine in the monad-coroutine package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
        ];
        buildable = true;
      };
    };
  }