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
      identifier = { name = "monad-finally"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2011-2017 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/monad-finally";
      url = "";
      synopsis = "Guard monadic computations with cleanup actions";
      description = "This package provides a generalized version of @Control.Exception.finally@.\nThe cleanup action is run not only on successful termination of the main\ncomputation and on errors, but on any control flow disruption (e.g.\n@mzero@, short-circuiting) that causes the main computation to not produce\na result.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."transformers-abort" or (errorHandler.buildDepError "transformers-abort"))
          (hsPkgs."monad-abort-fd" or (errorHandler.buildDepError "monad-abort-fd"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
        ];
        buildable = true;
      };
    };
  }