{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming-benchmarks";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2017 Harendra Kumar";
        maintainer = "Harendra Kumar";
        author = "Harendra Kumar";
        homepage = "http://github.com/composewell/streaming-benchmarks";
        url = "";
        synopsis = "Benchmarks to compare streaming packages";
        description = "Benchmarks along with with pretty comparative graph generation for streaming\noperations and their comparisons across notable Haskell streaming libraries\nincluding `streamly`, `vector`, `streaming`, `machines`, `pipes`, and\n`conduit`.\n<http://hackage.haskell.org/package/streamly streamly> is a streaming library\nwith native - high level, declarative and composable concurrency, it\nis the primary motivation for these benchmarks.\n\nIf you are using @stack@ then you can just use @./run.sh@ to run the\nbenchmarks; use @--quick@ option to get the result quickly; charts will be\ngenerated in the `charts` directory. Use @./run.sh --help@ for all script\noptions.\n\nWith any build tool, run the benchmarks with @--csv=results.csv@ as arguments\n(you can pass any @gauge@ arguments including @--quick@) and then use\n@makecharts results.csv \"streamly,vector,...\" False@ to create the charts.\nThe second argument to @makecharts@ is the list of package names, the third\nargument is whether to plot full or diff from the first package.\n\nSee the README file shipped with the package or\n<https://github.com/composewell/streaming-benchmarks in the github repo>\nfor more details. The github repo also shows the latest comparative graphs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "makecharts" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bench-graph
              hsPkgs.bytestring
              hsPkgs.Chart
              hsPkgs.Chart-diagrams
              hsPkgs.csv
              hsPkgs.directory
              hsPkgs.split
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.typed-process
              hsPkgs.getopt-generics
            ];
          };
        };
        benchmarks = {
          "benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.gauge
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.transformers
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.streamly
              hsPkgs.streaming
              hsPkgs.machines
              hsPkgs.pipes
              hsPkgs.conduit
              hsPkgs.drinkery
            ];
          };
        };
      };
    }