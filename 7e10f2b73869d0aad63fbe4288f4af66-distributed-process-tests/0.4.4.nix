{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tcp = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distributed-process-tests";
          version = "0.4.4";
        };
        license = "BSD-3-Clause";
        copyright = "Well-Typed LLP";
        maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
        author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
        homepage = "http://github.com/haskell-distributed/distributed-process/tree/master/distributed-process-tests";
        url = "";
        synopsis = "Tests and test support tools for distributed-process.";
        description = "Tests and test suite for Cloud Haskell libraries.";
        buildType = "Simple";
      };
      components = {
        distributed-process-tests = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.distributed-process
            hsPkgs.distributed-static
            hsPkgs.HUnit
            hsPkgs.network-transport
            hsPkgs.network
            hsPkgs.random
            hsPkgs.rematch
            hsPkgs.setenv
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.stm
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.4.2") hsPkgs.ghc-prim;
        };
        tests = {
          TestCHInMemory = {
            depends  = [
              hsPkgs.base
              hsPkgs.distributed-process-tests
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.network-transport-inmemory
              hsPkgs.test-framework
            ];
          };
          TestCHInTCP = {
            depends  = pkgs.lib.optionals _flags.tcp [
              hsPkgs.base
              hsPkgs.distributed-process-tests
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.network-transport-tcp
              hsPkgs.test-framework
            ];
          };
          TestClosure = {
            depends  = [
              hsPkgs.base
              hsPkgs.distributed-process-tests
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.network-transport-inmemory
              hsPkgs.test-framework
            ];
          };
          TestStats = {
            depends  = [
              hsPkgs.base
              hsPkgs.distributed-process-tests
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.network-transport-inmemory
              hsPkgs.test-framework
            ];
          };
          TestMx = {
            depends  = [
              hsPkgs.base
              hsPkgs.distributed-process-tests
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.network-transport-inmemory
              hsPkgs.test-framework
            ];
          };
          TestTracing = {
            depends  = [
              hsPkgs.base
              hsPkgs.distributed-process-tests
              hsPkgs.network
              hsPkgs.network-transport
              hsPkgs.network-transport-inmemory
              hsPkgs.test-framework
            ];
          };
        };
      };
    }