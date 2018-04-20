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
          name = "distributed-process-task";
          version = "0.1.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Watson 2012 - 2013";
        maintainer = "Tim Watson <watson.timothy@gmail.com>";
        author = "Tim Watson";
        homepage = "http://github.com/haskell-distributed/distributed-process-task";
        url = "";
        synopsis = "Task Framework for The Cloud Haskell Application Platform";
        description = "The Task Framework intends to provide tools for task management, work scheduling and distributed task coordination.\nThese capabilities build on the Async Framework as well as other tools and libraries.\nThe framework is currently a work in progress. The current release includes a simple bounded blocking queue\nimplementation only, as an example of the kind of capability and API that we intend to produce.";
        buildType = "Simple";
      };
      components = {
        distributed-process-task = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-accessor
            hsPkgs.distributed-process
            hsPkgs.distributed-process-extras
            hsPkgs.distributed-process-async
            hsPkgs.distributed-process-client-server
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
          ] ++ pkgs.lib.optionals compiler.isGhc [
            hsPkgs.template-haskell
            hsPkgs.derive
            hsPkgs.uniplate
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          TaskQueueTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.distributed-process
              hsPkgs.distributed-process-tests
              hsPkgs.distributed-process-task
              hsPkgs.distributed-process-extras
              hsPkgs.distributed-process-async
              hsPkgs.distributed-process-client-server
              hsPkgs.distributed-static
              hsPkgs.bytestring
              hsPkgs.data-accessor
              hsPkgs.fingertree
              hsPkgs.network-transport
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.network-transport-tcp
              hsPkgs.binary
              hsPkgs.network
              hsPkgs.HUnit
              hsPkgs.stm
              hsPkgs.time
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.transformers
              hsPkgs.rematch
              hsPkgs.ghc-prim
            ];
          };
        };
      };
    }