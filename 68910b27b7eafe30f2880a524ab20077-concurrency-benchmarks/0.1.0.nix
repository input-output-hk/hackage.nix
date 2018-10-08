{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "concurrency-benchmarks";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2018 Harendra Kumar";
      maintainer = "Harendra Kumar";
      author = "Harendra Kumar";
      homepage = "http://github.com/composewell/concurrency-benchmarks";
      url = "";
      synopsis = "Benchmarks to compare concurrency APIs";
      description = "Benchmarks to compare the pure concurrency overhead of various flavors of\nconcurrent @streamly@ streams and the @async@ package.\n\nUse @cabal new-bench@ or @stack bench@ to run the benchmarks. To generate\ncharts, run the benchmarks with @--csv-raw=results.csv@ option and then run\n@makecharts results.csv@. Charts are generated in the @charts@ directory.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "makecharts" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bench-graph)
            (hsPkgs.bytestring)
            (hsPkgs.Chart)
            (hsPkgs.Chart-diagrams)
            (hsPkgs.csv)
            (hsPkgs.directory)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.typed-process)
            (hsPkgs.getopt-generics)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.gauge)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.async)
            (hsPkgs.random)
            (hsPkgs.streamly)
          ];
        };
      };
    };
  }