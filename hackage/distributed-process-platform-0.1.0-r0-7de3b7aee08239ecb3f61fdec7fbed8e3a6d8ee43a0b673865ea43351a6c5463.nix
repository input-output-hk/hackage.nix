{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { perf = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "distributed-process-platform";
        version = "0.1.0";
        };
      license = "BSD-3-Clause";
      copyright = "Tim Watson 2012 - 2013";
      maintainer = "watson.timothy@gmail.com";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process-platform";
      url = "";
      synopsis = "The Cloud Haskell Application Platform";
      description = "Modelled after Erlang's OTP, this framework provides similar\nfacilities for Cloud Haskell, grouping essential practices\ninto a set of modules and standards designed to help you build\nconcurrent, distributed applications with relative ease.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-accessor)
          (hsPkgs.distributed-process)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.fingertree)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).le "7.5") [
          (hsPkgs.template-haskell)
          (hsPkgs.derive)
          (hsPkgs.uniplate)
          (hsPkgs.ghc-prim)
          ];
        };
      exes = {
        "leaks" = {
          depends = (pkgs.lib).optionals (flags.perf) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.distributed-process)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            ];
          };
        };
      tests = {
        "TimerTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.network-transport)
            (hsPkgs.mtl)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.rematch)
            (hsPkgs.transformers)
            ];
          };
        "PrimitivesTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.network-transport)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.rematch)
            (hsPkgs.transformers)
            ];
          };
        "AsyncTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.network-transport)
            (hsPkgs.mtl)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.rematch)
            (hsPkgs.transformers)
            ];
          };
        "ManagedProcessTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.network-transport)
            (hsPkgs.mtl)
            (hsPkgs.fingertree)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
            ];
          };
        "PrioritisedProcessTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.network-transport)
            (hsPkgs.mtl)
            (hsPkgs.fingertree)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
            ];
          };
        "SupervisorTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.distributed-static)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.fingertree)
            (hsPkgs.network-transport)
            (hsPkgs.mtl)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
            ];
          };
        "RegistryTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.distributed-static)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.fingertree)
            (hsPkgs.network-transport)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.binary)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
            ];
          };
        "TaskQueueTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.distributed-static)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.fingertree)
            (hsPkgs.network-transport)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.binary)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
            ];
          };
        "LoggerTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.distributed-static)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.fingertree)
            (hsPkgs.network-transport)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.binary)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
            ];
          };
        "ExchangeTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.distributed-static)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.fingertree)
            (hsPkgs.network-transport)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.binary)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
            ];
          };
        "MailboxTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-platform)
            (hsPkgs.distributed-static)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.fingertree)
            (hsPkgs.network-transport)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.binary)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
            ];
          };
        "InternalQueueTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.data-accessor)
            (hsPkgs.fingertree)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
            ];
          };
        };
      };
    }