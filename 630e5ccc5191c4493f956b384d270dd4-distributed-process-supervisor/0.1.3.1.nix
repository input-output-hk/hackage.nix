{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distributed-process-supervisor";
          version = "0.1.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Watson 2012 - 2013";
        maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
        author = "Tim Watson";
        homepage = "http://github.com/haskell-distributed/distributed-process-supervisor";
        url = "";
        synopsis = "Supervisors for The Cloud Haskell Application Platform";
        description = "A part of the Cloud Haskell framework\nThis package implements a process which supervises a set of other processes, referred to as its children.\nThese child processes can be either workers (i.e., processes that do something useful in your application)\nor other supervisors. In this way, supervisors may be used to build a hierarchical process structure\ncalled a supervision tree, which provides a convenient structure for building fault tolerant software.\nFor detailed information see \"Control.Distributed.Process.Supervisor\"";
        buildType = "Simple";
      };
      components = {
        "distributed-process-supervisor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-accessor
            hsPkgs.distributed-process
            hsPkgs.distributed-process-extras
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
          "SupervisorTests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.hashable
              hsPkgs.distributed-process
              hsPkgs.distributed-process-supervisor
              hsPkgs.distributed-process-extras
              hsPkgs.distributed-process-client-server
              hsPkgs.distributed-static
              hsPkgs.bytestring
              hsPkgs.data-accessor
              hsPkgs.fingertree
              hsPkgs.network-transport
              hsPkgs.mtl
              hsPkgs.network-transport-tcp
              hsPkgs.binary
              hsPkgs.deepseq
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