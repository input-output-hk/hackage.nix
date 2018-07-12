{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "MonadCompose";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "info@alkalisoftware.net";
        author = "James Candy";
        homepage = "http://alkalisoftware.net";
        url = "";
        synopsis = "Methods for composing monads.";
        description = "Methods for composing monads.\nThe IO monad transformer solves the problem of combining two IO-performing monad transformers, so that neither one needs to provide a MonadIO interface, and both can be transformed separately.\nMost known monads have a distributive law. The Distributive module implements distributivity for monad transformers.\nA monad transformer can transform another monad, but if you have two monads both lacking a transformer, there is little you can do in general. However, you can compose them in a coproduct construction. The PlusMonad module implements a similar plan, but differs from coproducts in that it doesn't compress together contiguous uses of a monad. Another mystery is how to get the other distributive law (m(x + y) -> mx + my).\nI would like the auto-lifter and the Plus monad to work together, but I can't figure out how to coax IncoherentInstances to support it.";
        buildType = "Simple";
      };
      components = {
        "MonadCompose" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.mtl
            hsPkgs.mmorph
            hsPkgs.monad-products
            hsPkgs.transformers
            hsPkgs.MaybeT
          ];
        };
      };
    }