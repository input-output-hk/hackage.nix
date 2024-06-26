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
      identifier = { name = "forkable-monad"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Google 2010; SID.run 2018";
      maintainer = "matt.p.ahrens@gmail.com";
      author = "David Anderson";
      homepage = "https://github.com/https://www.github.com/System-Indystress/ForkableMonad#readme";
      url = "";
      synopsis = "An implementation of forkIO for monad stacks.";
      description = "< This module defines a more generic version of Control.Concurrent's forkIO, which can directly run some complex monadic actions as well as plain IO actions.";
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