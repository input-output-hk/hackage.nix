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
        name = "distributed-process-client-server";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Tim Watson 2012 - 2017";
      maintainer = "Tim Watson <watson.timothy@gmail.com>";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process-client-server";
      url = "";
      synopsis = "The Cloud Haskell Application Platform";
      description = "Modelled after Erlang OTP's gen_server, this framework provides similar\nfacilities for Cloud Haskell, grouping essential practices for client/server\ndevelopment into a set of modules and standards designed to help you build\nconcurrent, distributed applications with relative ease.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.distributed-process)
          (hsPkgs.distributed-process-extras)
          (hsPkgs.distributed-process-async)
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
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.le "7.5") [
          (hsPkgs.template-haskell)
          (hsPkgs.derive)
          (hsPkgs.uniplate)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "ManagedProcessTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-extras)
            (hsPkgs.distributed-process-async)
            (hsPkgs.distributed-process-client-server)
            (hsPkgs.distributed-process-systest)
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
            (hsPkgs.exceptions)
          ];
        };
        "PrioritisedProcessTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-extras)
            (hsPkgs.distributed-process-async)
            (hsPkgs.distributed-process-client-server)
            (hsPkgs.distributed-process-systest)
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
            (hsPkgs.exceptions)
          ];
        };
      };
    };
  }