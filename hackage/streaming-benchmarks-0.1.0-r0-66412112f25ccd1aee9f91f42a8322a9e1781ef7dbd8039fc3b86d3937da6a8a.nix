{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "streaming-benchmarks";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2017 Harendra Kumar";
      maintainer = "Harendra Kumar";
      author = "Harendra Kumar";
      homepage = "http://github.com/composewell/streaming-benchmarks";
      url = "";
      synopsis = "Benchmarks to compare streaming packages";
      description = "Comprehensive, carefully crafted benchmarks for streaming operations and\ntheir comparisons across notable Haskell streaming libraries including\n`streaming`, `machines`, `pipes`, `conduit` and `streamly`.\n<http://hackage.haskell.org/package/streamly Streamly> is a new\nstreaming library with high level and composable concurrency built-in, it is\nthe primary motivation for these benchmarks. We have put a lot of effort to\nmake sure that the benchmarks are correct, fair and reproducible.  Please\nreport if you find something that is not right.\n\nIf you are using @stack@ then use @./run.sh@ to run the benchmarks;\ncharts will be generated in the `charts` directory.\n\nWith any build tool, run the benchmarks with\n@--csv=results.csv@ as arguments and then use @makecharts results.csv@ to\ncreate the charts. In case you want to be pedantic about accurate results\nthen you can run the benchmarks in the same way as @run.sh@ invokes them.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "makecharts" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Chart)
            (hsPkgs.Chart-diagrams)
            (hsPkgs.csv)
            (hsPkgs.directory)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.typed-process)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.gauge)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.list-transformer)
            (hsPkgs.list-t)
            (hsPkgs.logict)
            (hsPkgs.machines)
            (hsPkgs.pipes)
            (hsPkgs.streaming)
            (hsPkgs.vector)
            (hsPkgs.streamly)
          ];
        };
      };
    };
  }