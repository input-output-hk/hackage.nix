{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "MonadCompose";
        version = "0.8.2.0";
      };
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
      "MonadCompose" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.monad-products)
          (hsPkgs.transformers)
          (hsPkgs.MaybeT)
          (hsPkgs.random)
          (hsPkgs.data-default)
        ];
      };
    };
  }