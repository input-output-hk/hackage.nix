{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ghc-mtl";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jcpetruzza@gmail.com";
        author = "Daniel Gorin";
        homepage = "http://code.haskell.org/~jcpetruzza/ghc-mtl";
        url = "";
        synopsis = "An mtl compatible version of the Ghc-Api monads\nand monad-transformers.";
        description = "Provides an 'mtl' compatible version of the 'GhcT'\nmonad-transformer defined in the 'GHC-API' since version\n6.10.1.";
        buildType = "Simple";
      };
      components = {
        ghc-mtl = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.mtl
            hsPkgs.MonadCatchIO-mtl
          ];
        };
      };
    }