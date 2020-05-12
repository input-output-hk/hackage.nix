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
      specVersion = "1.8";
      identifier = { name = "MonadCompose"; version = "0.8.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "http://alkalisoftware.net";
      url = "";
      synopsis = "Methods for composing monads.";
      description = "Methods for composing monads.\n\nThe IO monad transformer solves the problem of combining two IO-performing monads, so that both may be transformed separately.\n\nA monad transformer can transform another monad, but if you have two monads both lacking a transformer, one can define an /extended distributive law/ which allows a monad to arise - see Control.Monad.PlusMonad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."monad-products" or (errorHandler.buildDepError "monad-products"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }