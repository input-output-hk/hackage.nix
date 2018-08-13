{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      perf = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "distributed-process-registry";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Tim Watson 2012 - 2015";
      maintainer = "watson.timothy@gmail.com";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process-registry";
      url = "";
      synopsis = "Cloud Haskell Extended Process Registry";
      description = "This package provides an extended process registry.";
      buildType = "Simple";
    };
    components = {
      "distributed-process-registry" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-accessor)
          (hsPkgs.distributed-process)
          (hsPkgs.distributed-process-extras)
          (hsPkgs.distributed-process-supervisor)
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
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.le "7.5") [
          (hsPkgs.template-haskell)
          (hsPkgs.derive)
          (hsPkgs.uniplate)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "RegistryTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-extras)
            (hsPkgs.distributed-process-registry)
            (hsPkgs.distributed-process-tests)
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
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.5") (hsPkgs.ghc-prim);
        };
      };
    };
  }