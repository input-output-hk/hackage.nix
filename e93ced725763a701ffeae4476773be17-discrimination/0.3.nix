{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "discrimination";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/discrimination/";
        url = "";
        synopsis = "Fast generic linear-time sorting, joins and container construction.";
        description = "This package provides fast, generic, linear-time discrimination and sorting.\n\nThe techniques applied are based on <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011a.pdf multiple> <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011c.pdf papers> and <https://www.youtube.com/watch?v=sz9ZlZIRDAg talks> by <http://www.diku.dk/hjemmesider/ansatte/henglein/ Fritz Henglein>.";
        buildType = "Simple";
      };
      components = {
        "discrimination" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.primitive
            hsPkgs.profunctors
            hsPkgs.promises
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.vector
            hsPkgs.void
          ];
        };
        benchmarks = {
          "wordmap" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.discrimination
              hsPkgs.ghc-prim
              hsPkgs.unordered-containers
              hsPkgs.primitive
            ];
          };
        };
      };
    }