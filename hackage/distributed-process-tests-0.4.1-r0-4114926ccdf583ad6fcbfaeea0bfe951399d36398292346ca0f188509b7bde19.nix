{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process-tests"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "watson.timothy@gmail.com, edsko@well-typed.com, duncan@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process-tests";
      url = "";
      synopsis = "Tests for distributed-process.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.distributed-process)
          (hsPkgs.distributed-static)
          (hsPkgs.HUnit)
          (hsPkgs.network-transport)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.rematch)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          ];
        };
      tests = {
        "TestCH" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-process-tests)
            (hsPkgs.network)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.test-framework)
            ];
          };
        "TestClosure" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-process-tests)
            (hsPkgs.network)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.test-framework)
            ];
          };
        "TestStats" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-process-tests)
            (hsPkgs.network)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.test-framework)
            ];
          };
        "TestMx" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-process-tests)
            (hsPkgs.network)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.test-framework)
            ];
          };
        "TestTracing" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-process-tests)
            (hsPkgs.network)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.test-framework)
            ];
          };
        };
      };
    }