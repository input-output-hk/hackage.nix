{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-fluid";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/pipes-fluid#readme";
        url = "";
        synopsis = "Reactively combines Producers so that a value is yielded as soon as possible.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "pipes-fluid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.lens
            hsPkgs.lifted-async
            hsPkgs.monad-control
            hsPkgs.pipes
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.these
          ];
        };
        tests = {
          "pipes-fluid-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.constraints
              hsPkgs.lens
              hsPkgs.hspec
              hsPkgs.lifted-async
              hsPkgs.mmorph
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.pipes
              hsPkgs.pipes-concurrency
              hsPkgs.pipes-fluid
              hsPkgs.pipes-misc
              hsPkgs.stm
              hsPkgs.transformers
            ];
          };
        };
      };
    }