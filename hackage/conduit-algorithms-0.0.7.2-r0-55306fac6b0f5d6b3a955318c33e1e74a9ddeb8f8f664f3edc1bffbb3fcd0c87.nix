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
      specVersion = "1.10";
      identifier = {
        name = "conduit-algorithms";
        version = "0.0.7.2";
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
      "library" = {
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
          (hsPkgs.lzma-conduit)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.stm-conduit)
          (hsPkgs.streaming-commons)
          (hsPkgs.transformers)
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
            (hsPkgs.lzma-conduit)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.stm)
            (hsPkgs.stm-conduit)
            (hsPkgs.streaming-commons)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }