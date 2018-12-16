{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      install-benchmarks = false;
      distributed-process-tests = false;
      unsafe = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-transport-zeromq";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014, EURL Tweag";
      maintainer = "Alexander Vershilov <alexander.vershilov@tweag.io>";
      author = "Tweag I/O";
      homepage = "";
      url = "";
      synopsis = "ZeroMQ backend for network-transport";
      description = "Implementation of the\n<http://hackage.haskell.org/package/network-transport network-transport>\nAPI over ZeroMQ. This provides access to the wealth of transports implemented in ZeroMQ, such as in-process, inter-process, TCP, TPIC and multicast. Furthermore, this makes it possible to encrypt and authenticate clients using ZeroMQ's security mechanisms, and increase throughput using ZeroMQ's intelligent message batching.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.network-transport)
          (hsPkgs.zeromq4-haskell)
          (hsPkgs.async)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
          (hsPkgs.exceptions)
          (hsPkgs.void)
          (hsPkgs.random)
        ];
      };
      exes = {
        "bench-dp-latency" = {
          depends = pkgs.lib.optionals (flags.install-benchmarks) [
            (hsPkgs.base)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.distributed-process)
          ];
        };
        "bench-dp-throughput" = {
          depends = pkgs.lib.optionals (flags.install-benchmarks) [
            (hsPkgs.base)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
          ];
        };
        "bench-dp-channels" = {
          depends = pkgs.lib.optionals (flags.install-benchmarks) [
            (hsPkgs.base)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
          ];
        };
      };
      tests = {
        "test-zeromq" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.network-transport-tests)
          ];
        };
        "test-api" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
        "test-ch-core" = {
          depends = pkgs.lib.optionals (flags.distributed-process-tests) [
            (hsPkgs.base)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.distributed-process-tests)
            (hsPkgs.network)
            (hsPkgs.network-transport)
            (hsPkgs.test-framework)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.bytestring)
          ];
        };
        "test-ch-closure" = {
          depends = pkgs.lib.optionals (flags.distributed-process-tests) [
            (hsPkgs.base)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.distributed-process-tests)
            (hsPkgs.network)
            (hsPkgs.network-transport)
            (hsPkgs.test-framework)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.bytestring)
          ];
        };
        "test-ch-stat" = {
          depends = pkgs.lib.optionals (flags.distributed-process-tests) [
            (hsPkgs.base)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.distributed-process-tests)
            (hsPkgs.network)
            (hsPkgs.network-transport)
            (hsPkgs.test-framework)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.bytestring)
          ];
        };
      };
      benchmarks = {
        "bench-channels-local" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.distributed-process)
            (hsPkgs.criterion)
          ];
        };
        "bench-latency-local" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.distributed-process)
            (hsPkgs.criterion)
          ];
        };
        "bench-throughput-local" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.distributed-process)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }