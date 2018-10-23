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
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "http://alkalisoftware.net";
      url = "";
      synopsis = "Methods for composing monads.";
      description = "See also Control.Monad.Trans.Adjoint.";
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
        ];
      };
    };
  }