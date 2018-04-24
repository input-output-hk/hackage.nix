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
          name = "distributed-process-execution";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Watson 2012 - 2013";
        maintainer = "watson.timothy@gmail.com";
        author = "Tim Watson";
        homepage = "http://github.com/haskell-distributed/distributed-process-execution";
        url = "";
        synopsis = "Execution Framework for The Cloud Haskell Application Platform";
        description = "The Execution Framework provides tools for load regulation, workload shedding and remote hand-off.\nThe currently implementation provides only a subset of the plumbing required, comprising tools\nfor event management, mailbox buffering and message routing.";
        buildType = "Simple";
      };
      components = {
        distributed-process-execution = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-accessor
            hsPkgs.distributed-process
            hsPkgs.distributed-process-extras
            hsPkgs.distributed-process-supervisor
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
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.le "7.5") [
            hsPkgs.template-haskell
            hsPkgs.derive
            hsPkgs.uniplate
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          ExchangeTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.distributed-process
              hsPkgs.distributed-process-execution
              hsPkgs.distributed-process-extras
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
          MailboxTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.distributed-process
              hsPkgs.distributed-process-execution
              hsPkgs.distributed-process-extras
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