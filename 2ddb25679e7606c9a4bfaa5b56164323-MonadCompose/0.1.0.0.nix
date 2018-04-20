{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "MonadCompose";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "info@alkalisoftware.net";
        author = "James Candy";
        homepage = "http://alkalisoftware.net";
        url = "";
        synopsis = "An IO monad transformer";
        description = "Methods for composing monads. See also Control.Monad.Trans.Adjoint.";
        buildType = "Simple";
      };
      components = {
        MonadCompose = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.mtl
            hsPkgs.mmorph
            hsPkgs.monad-products
            hsPkgs.transformers
          ];
        };
      };
    }