{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-effects";
          version = "0.7.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Luka Horvat";
        maintainer = "luka.horvat9@gmail.com";
        author = "Luka Horvat";
        homepage = "https://gitlab.com/LukaHorvat/simple-effects";
        url = "";
        synopsis = "A simple effect system that integrates with MTL";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        simple-effects = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.transformers-base
            hsPkgs.list-t
            hsPkgs.array
            hsPkgs.MonadRandom
            hsPkgs.exceptions
            hsPkgs.text
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.simple-effects
            ];
          };
        };
        benchmarks = {
          bench-effects = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.simple-effects
            ];
          };
        };
      };
    }