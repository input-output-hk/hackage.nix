{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "opaleye-trans";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Matthew Wraith";
        maintainer = "wraithm@gmail.com";
        author = "Matthew Wraith";
        homepage = "https://github.com/tomjaguarpaw/haskell-opaleye";
        url = "";
        synopsis = "A monad transformer for Opaleye";
        description = "A monad transformer for Opaleye";
        buildType = "Simple";
      };
      components = {
        opaleye-trans = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.opaleye
            hsPkgs.postgresql-simple
            hsPkgs.product-profunctors
          ];
        };
      };
    }