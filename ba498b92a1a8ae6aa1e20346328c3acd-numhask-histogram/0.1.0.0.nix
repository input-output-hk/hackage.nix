{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "numhask-histogram";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day (c) 2017";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/numhask-histogram#readme";
        url = "";
        synopsis = "See readme.md";
        description = "See readme.md for description.";
        buildType = "Simple";
      };
      components = {
        numhask-histogram = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.foldl
            hsPkgs.numhask-prelude
            hsPkgs.numhask-range
            hsPkgs.tdigest
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.protolude
              hsPkgs.tasty
            ];
          };
        };
      };
    }