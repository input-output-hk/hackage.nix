{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genifunctors";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "danr@chalmers.se";
        author = "Dan Rosén";
        homepage = "";
        url = "";
        synopsis = "Generate generalized fmap, foldMap and traverse";
        description = "Generate (derive) fmap, foldMap and traverse for Bifunctors, Trifunctors, or a functor with any arity";
        buildType = "Simple";
      };
      components = {
        genifunctors = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }