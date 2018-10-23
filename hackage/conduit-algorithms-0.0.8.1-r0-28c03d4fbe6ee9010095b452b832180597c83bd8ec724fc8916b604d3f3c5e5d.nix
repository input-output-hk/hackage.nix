{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "conduit-algorithms";
        version = "0.0.8.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Luis Pedro Coelho";
      author = "Luis Pedro Coelho";
      homepage = "https://github.com/luispedro/conduit-algorithms#readme";
      url = "";
      synopsis = "Conduit-based algorithms";
      description = "Algorithms on Conduits, including higher level asynchronous processing and some other utilities.";
      buildType = "Simple";
    };
    components = {
      "conduit-algorithms" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib-conduit)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.lzma-conduit)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.pqueue)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.stm-conduit)
          (hsPkgs.streaming-commons)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "conduit-algorithms-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-algorithms)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.lzma-conduit)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.pqueue)
            (hsPkgs.resourcet)
            (hsPkgs.stm)
            (hsPkgs.stm-conduit)
            (hsPkgs.streaming-commons)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            (hsPkgs.transformers)
            (hsPkgs.unliftio-core)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "conduit-algorithms-bench" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-algorithms)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.lzma-conduit)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.pqueue)
            (hsPkgs.resourcet)
            (hsPkgs.stm)
            (hsPkgs.stm-conduit)
            (hsPkgs.streaming-commons)
            (hsPkgs.transformers)
            (hsPkgs.unliftio-core)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }