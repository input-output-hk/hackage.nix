{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-classes";
          version = "0.3.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "M Farkas-Dyck <strake888@gmail.com>";
        author = "Roman Cheplyaka <roma@ro-che.info>";
        homepage = "https://github.com/strake/monad-classes.hs";
        url = "";
        synopsis = "more flexible mtl";
        description = "";
        buildType = "Simple";
      };
      components = {
        monad-classes = {
          depends  = [
            hsPkgs.base
            hsPkgs.peano
            hsPkgs.mmorph
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.reflection
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.monad-classes
              hsPkgs.transformers
              hsPkgs.data-lens-light
              hsPkgs.ghc-prim
              hsPkgs.conduit
              hsPkgs.mmorph
            ];
          };
        };
      };
    }