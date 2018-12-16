{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      benchmarks = false;
      unsafe-constructs = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-transport-zeromq";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014, EURL Tweag";
      maintainer = "Alexander Vershilov <alexander.vershilov@tweag.io>";
      author = "Alexander Vershilov";
      homepage = "";
      url = "";
      synopsis = "ZeroMQ backend for network-transport";
      description = "";
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.distributed-process)
          ];
        };
        "bench-dp-throughput" = {
          depends = pkgs.lib.optionals (flags.benchmarks) [
            (hsPkgs.base)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-zeromq)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
          ];
        };
        "bench-dp-channels" = {
          depends = pkgs.lib.optionals (flags.benchmarks) [
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
          ];
        };
        "test-ch-core" = {
          depends = [
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
          depends = [
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
          depends = [
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
    };
  }