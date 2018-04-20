{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distributed-process-fsm";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Watson 2017";
        maintainer = "Tim Watson <watson.timothy@gmail.com>";
        author = "Tim Watson";
        homepage = "http://github.com/haskell-distributed/distributed-process-fsm";
        url = "";
        synopsis = "The Cloud Haskell implementation of Erlang/OTP gen_statem";
        description = "Cloud Haskell framework for building finite state machines around CSPs";
        buildType = "Simple";
      };
      components = {
        distributed-process-fsm = {
          depends  = [
            hsPkgs.base
            hsPkgs.distributed-process
            hsPkgs.distributed-process-extras
            hsPkgs.distributed-process-client-server
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.exceptions
          ];
        };
        tests = {
          FsmTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.network-transport-tcp
              hsPkgs.distributed-process
              hsPkgs.distributed-process-fsm
              hsPkgs.distributed-process-extras
              hsPkgs.distributed-process-systest
              hsPkgs.distributed-static
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-accessor
              hsPkgs.deepseq
              hsPkgs.fingertree
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.stm
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.rematch
              hsPkgs.ghc-prim
            ];
          };
        };
      };
    }