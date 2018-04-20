{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distributed-process-systest";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Watson";
        maintainer = "watson.timothy@gmail.com";
        author = "Tim Watson";
        homepage = "http://github.com/haskell-distributed/distributed-process-systest";
        url = "";
        synopsis = "Cloud Haskell Test Support";
        description = "Testing Frameworks and Capabilities for programs built on Cloud Haskell";
        buildType = "Simple";
      };
      components = {
        distributed-process-systest = {
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
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.stm
          ];
        };
      };
    }