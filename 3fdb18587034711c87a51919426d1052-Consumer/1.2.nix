{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Consumer";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "Jeremy Shaw";
        homepage = "http://src.seereason.com/ghc6103/haskell-consumer";
        url = "";
        synopsis = "A monad and monad transformer for consuming streams";
        description = "Useful for building parsing type operations on top of a list of elements";
        buildType = "Simple";
      };
      components = {
        Consumer = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }