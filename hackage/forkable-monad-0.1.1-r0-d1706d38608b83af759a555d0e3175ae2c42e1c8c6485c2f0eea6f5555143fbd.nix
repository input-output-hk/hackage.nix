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
      identifier = { name = "forkable-monad"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc. 2010";
      maintainer = "dave@natulte.net";
      author = "David Anderson";
      homepage = "http://code.google.com/p/forkable-monad/";
      url = "";
      synopsis = "An implementation of forkIO for monad stacks.";
      description = "This module defines a more generic version of Control.Concurrent's\nforkIO, which can directly run some complex monadic actions as well\nas plain IO actions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }