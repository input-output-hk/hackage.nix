{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distributed-process-extras";
          version = "0.2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Watson 2012 - 2013";
        maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
        author = "Tim Watson";
        homepage = "http://github.com/haskell-distributed/distributed-process-extras";
        url = "";
        synopsis = "Cloud Haskell Extras";
        description = "Supporting library, providing common types and utilities used by the\nvarious components that make up the distributed-process-platform package.";
        buildType = "Simple";
      };
      components = {
        distributed-process-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-accessor
            hsPkgs.distributed-process
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
          ] ++ optionals compiler.isGhc [
            hsPkgs.template-haskell
            hsPkgs.derive
            hsPkgs.uniplate
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          InternalQueueTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.distributed-process
              hsPkgs.distributed-process-extras
              hsPkgs.distributed-process-tests
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.rematch
              hsPkgs.ghc-prim
            ];
          };
          PrimitivesTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.distributed-process
              hsPkgs.distributed-process-extras
              hsPkgs.distributed-process-tests
              hsPkgs.network-transport
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.network-transport-tcp
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.network
              hsPkgs.HUnit
              hsPkgs.stm
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.rematch
              hsPkgs.transformers
            ];
          };
          TimerTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.deepseq
              hsPkgs.distributed-process
              hsPkgs.distributed-process-extras
              hsPkgs.distributed-process-tests
              hsPkgs.network-transport
              hsPkgs.network-transport-tcp
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.rematch
              hsPkgs.ghc-prim
            ];
          };
          LoggerTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.distributed-process
              hsPkgs.distributed-process-extras
              hsPkgs.distributed-process-tests
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
              hsPkgs.transformers
              hsPkgs.rematch
              hsPkgs.ghc-prim
            ];
          };
        };
      };
    }