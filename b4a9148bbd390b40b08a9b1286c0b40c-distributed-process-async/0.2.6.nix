{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      perf = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distributed-process-async";
          version = "0.2.6";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Watson 2012 - 2016";
        maintainer = "Tim Watson <watson.timothy@gmail.com>";
        author = "Tim Watson";
        homepage = "http://github.com/haskell-distributed/distributed-process-async";
        url = "";
        synopsis = "Cloud Haskell Async API";
        description = "This package provides a higher-level interface over Processes, in which an Async a is a\nconcurrent, possibly distributed Process that will eventually deliver a value of type a.\nThe package provides ways to create Async computations, wait for their results, and cancel them.";
        buildType = "Simple";
      };
      components = {
        "distributed-process-async" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-accessor
            hsPkgs.distributed-process
            hsPkgs.exceptions
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.fingertree
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        tests = {
          "AsyncTests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.distributed-process
              hsPkgs.distributed-process-async
              hsPkgs.distributed-process-systest
              hsPkgs.exceptions
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.network-transport-tcp
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.stm
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.rematch
              hsPkgs.transformers
            ];
          };
        };
      };
    }