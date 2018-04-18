{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "opaleye-trans";
          version = "0.4.1";
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
            hsPkgs.opaleye
            hsPkgs.postgresql-simple
            hsPkgs.product-profunctors
            hsPkgs.transformers
          ];
        };
        exes = {
          opaleye-rosetree = {
            depends  = [
              hsPkgs.base
              hsPkgs.opaleye
              hsPkgs.opaleye-trans
              hsPkgs.postgresql-simple
              hsPkgs.product-profunctors
            ];
          };
          opaleye-rosetree2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.opaleye
              hsPkgs.opaleye-trans
              hsPkgs.postgresql-simple
              hsPkgs.product-profunctors
            ];
          };
        };
      };
    }