{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "for-free";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Functor, Monad, MonadPlus, etc for free";
        description = "Plus, OpT, Yoneda, CoYoneda, Free, Cofree, Density, Codensity, CoT, CodensityAsk, Initialize, Finalize, Decompose, Recompose";
        buildType = "Simple";
      };
      components = {
        for-free = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.comonad
            hsPkgs.comonad-transformers
          ];
        };
      };
    }