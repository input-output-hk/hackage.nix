{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-locale = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "distributed-process-extras";
        version = "0.3.5";
      };
      license = "BSD-3-Clause";
      copyright = "Tim Watson 2012 - 2017";
      maintainer = "Tim Watson <watson.timothy@gmail.com>";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process-extras";
      url = "";
      synopsis = "Cloud Haskell Extras";
      description = "Supporting library, providing common types and utilities used by the\nvarious libraries built on top of distributed-process";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.distributed-process)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.fingertree)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ] ++ (if flags.old-locale
          then [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]
          else [ (hsPkgs.time) ]);
      };
      tests = {
        "InternalQueueTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-extras)
            (hsPkgs.distributed-process-systest)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
          ];
        };
        "PrimitivesTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-extras)
            (hsPkgs.distributed-process-systest)
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
        "TimerTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.deepseq)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-extras)
            (hsPkgs.distributed-process-systest)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.rematch)
            (hsPkgs.ghc-prim)
          ];
        };
        "LoggerTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-extras)
            (hsPkgs.distributed-process-systest)
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
      };
    };
  }