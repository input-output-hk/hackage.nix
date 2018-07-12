{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "perf";
          version = "0.4.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day, Marco Zocca";
        homepage = "https://github.com/tonyday567/perf#readme";
        url = "";
        synopsis = "Low-level run time measurement.";
        description = "A set of tools to accurately measure time performance of Haskell programs.\nperf aims to be lightweight by having minimal dependencies on standard libraries.\nSee the Perf module for an example and full API documentation.";
        buildType = "Simple";
      };
      components = {
        "perf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.foldl
            hsPkgs.rdtsc
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }