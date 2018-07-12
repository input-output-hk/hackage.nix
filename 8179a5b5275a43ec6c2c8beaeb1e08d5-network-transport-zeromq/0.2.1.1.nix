{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      install-benchmarks = false;
      distributed-process-tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-transport-zeromq";
          version = "0.2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2015, EURL Tweag";
        maintainer = "Alexander Vershilov <alexander.vershilov@tweag.io>";
        author = "Tweag I/O";
        homepage = "https://github.com/tweag/network-transport-zeromq";
        url = "";
        synopsis = "ZeroMQ backend for network-transport";
        description = "Implementation of the\n<http://hackage.haskell.org/package/network-transport\nnetwork-transport> API over ZeroMQ. This provides access to the\nwealth of transports implemented in ZeroMQ, such as in-process,\ninter-process, TCP, TPIC and multicast. Furthermore, this makes it\npossible to encrypt and authenticate clients using ZeroMQ's security\nmechanisms, and increase throughput using ZeroMQ's intelligent\nmessage batching.";
        buildType = "Simple";
      };
      components = {
        "network-transport-zeromq" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.network-transport
            hsPkgs.zeromq4-haskell
            hsPkgs.async
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.semigroups
            hsPkgs.exceptions
            hsPkgs.random
            hsPkgs.data-accessor
          ];
        };
        exes = {
          "bench-dp-latency" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport-zeromq
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.criterion
              hsPkgs.distributed-process
            ];
          };
          "bench-dp-throughput" = {
            depends  = [
              hsPkgs.base
              hsPkgs.distributed-process
              hsPkgs.network-transport-zeromq
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.binary
            ];
          };
          "bench-dp-channels" = {
            depends  = [
              hsPkgs.base
              hsPkgs.distributed-process
              hsPkgs.network-transport-zeromq
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.binary
            ];
          };
        };
        tests = {
          "test-zeromq" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport
              hsPkgs.network-transport-zeromq
              hsPkgs.zeromq4-haskell
              hsPkgs.network-transport-tests
            ];
          };
          "test-api" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport
              hsPkgs.network-transport-zeromq
              hsPkgs.zeromq4-haskell
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
          "test-ch-core" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport-zeromq
              hsPkgs.distributed-process-tests
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.test-framework
              hsPkgs.containers
              hsPkgs.stm
              hsPkgs.stm-chans
              hsPkgs.bytestring
            ];
          };
          "test-ch-closure" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport-zeromq
              hsPkgs.distributed-process-tests
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.test-framework
              hsPkgs.containers
              hsPkgs.stm
              hsPkgs.stm-chans
              hsPkgs.bytestring
            ];
          };
          "test-ch-stat" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport-zeromq
              hsPkgs.distributed-process-tests
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.test-framework
              hsPkgs.containers
              hsPkgs.stm
              hsPkgs.stm-chans
              hsPkgs.bytestring
            ];
          };
        };
        benchmarks = {
          "bench-channels-local" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport-zeromq
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.distributed-process
              hsPkgs.criterion
            ];
          };
          "bench-latency-local" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport-zeromq
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.distributed-process
              hsPkgs.criterion
            ];
          };
          "bench-throughput-local" = {
            depends  = [
              hsPkgs.base
              hsPkgs.network-transport-zeromq
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.distributed-process
              hsPkgs.criterion
            ];
          };
        };
      };
    }