{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ghc-mtl";
          version = "1.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jcpetruzza@gmail.com";
        author = "Daniel Gorin";
        homepage = "http://hub.darcs.net/jcpetruzza/ghc-mtl";
        url = "";
        synopsis = "An mtl compatible version of the Ghc-Api monads\nand monad-transformers.";
        description = "Provides an 'mtl' compatible version of the 'GhcT'\nmonad-transformer defined in the 'GHC-API' since version\n6.10.1.";
        buildType = "Simple";
      };
      components = {
        ghc-mtl = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.mtl
            hsPkgs.exceptions
            hsPkgs.extensible-exceptions
          ];
        };
      };
    }