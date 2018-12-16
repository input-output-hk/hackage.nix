{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "distributed-process-supervisor";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Tim Watson 2012 - 2013";
      maintainer = "Tim Watson <watson.timothy@gmail.com>";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process-supervisor";
      url = "";
      synopsis = "Supervisors for The Cloud Haskell Application Platform";
      description = "A part of the Cloud Haskell framework\nThis package implements a process which supervises a set of other processes, referred to as its children.\nThese child processes can be either workers (i.e., processes that do something useful in your application)\nor other supervisors. In this way, supervisors may be used to build a hierarchical process structure\ncalled a supervision tree, which provides a convenient structure for building fault tolerant software.\nFor detailed information see \"Control.Distributed.Process.Supervisor\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-accessor)
          (hsPkgs.distributed-static)
          (hsPkgs.distributed-process)
          (hsPkgs.distributed-process-extras)
          (hsPkgs.distributed-process-client-server)
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
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "SupervisorTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.distributed-static)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-supervisor)
            (hsPkgs.distributed-process-extras)
            (hsPkgs.distributed-process-client-server)
            (hsPkgs.distributed-static)
            (hsPkgs.bytestring)
            (hsPkgs.random)
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
            (hsPkgs.exceptions)
          ];
        };
        "NonThreadedSupervisorTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.distributed-static)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-supervisor)
            (hsPkgs.distributed-process-extras)
            (hsPkgs.distributed-process-client-server)
            (hsPkgs.distributed-static)
            (hsPkgs.bytestring)
            (hsPkgs.random)
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
            (hsPkgs.exceptions)
          ];
        };
      };
    };
  }