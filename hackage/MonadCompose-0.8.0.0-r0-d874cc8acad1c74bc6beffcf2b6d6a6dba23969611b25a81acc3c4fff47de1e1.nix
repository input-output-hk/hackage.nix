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
      identifier = { name = "MonadCompose"; version = "0.8.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "http://alkalisoftware.net";
      url = "";
      synopsis = "Methods for composing monads.";
      description = "Methods for composing monads.\n\nThe IO monad transformer solves the problem of combining two IO-performing monads, so that neither one needs to provide a MonadIO interface and both can be transformed separately.\n\nMost known monads have a distributive law. The Distributive module implements distributivity for monad transformers.\n\nA monad transformer can transform another monad, but if you have two monads both lacking a transformer, there is little you can do in general. However, you can compose them in a coproduct construction. The PlusMonad module implements a similar plan, but differs from coproducts in that it doesn't compress together contiguous uses of a monad.";
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
          (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }