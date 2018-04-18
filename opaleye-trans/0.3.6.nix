{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "opaleye-trans";
          version = "0.3.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Bitnomial, Inc";
        maintainer = "wraithm@gmail.com";
        author = "Matthew Wraith";
        homepage = "https://github.com/WraithM/opaleye-trans";
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
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.opaleye
            hsPkgs.postgresql-simple
            hsPkgs.product-profunctors
          ];
        };
        exes = {
          opaleye-rosetree = {
            depends  = [
              hsPkgs.base
              hsPkgs.opaleye
              hsPkgs.postgresql-simple
              hsPkgs.product-profunctors
              hsPkgs.opaleye-trans
            ];
          };
          opaleye-rosetree2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.opaleye
              hsPkgs.postgresql-simple
              hsPkgs.product-profunctors
              hsPkgs.opaleye-trans
            ];
          };
        };
      };
    }