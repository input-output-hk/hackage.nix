{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "MonadCompose";
        version = "0.8.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "http://alkalisoftware.net";
      url = "";
      synopsis = "Methods for composing monads.";
      description = "Methods for composing monads.\n\nThe IO monad transformer solves the problem of combining two IO-performing monads, so that neither one needs to provide a MonadIO interface and both can be transformed separately.\n\nA monad transformer can transform another monad, but if you have two monads both lacking a transformer, you can define an /extended distributive law/ which allows a monad to arise - see Control.Monad.PlusMonad. This is an alternate solution to the same problem.";
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
          (hsPkgs.random)
          (hsPkgs.data-default)
          (hsPkgs.parallel)
          (hsPkgs.transformers-compat)
          (hsPkgs.monad-loops)
        ];
      };
    };
  }