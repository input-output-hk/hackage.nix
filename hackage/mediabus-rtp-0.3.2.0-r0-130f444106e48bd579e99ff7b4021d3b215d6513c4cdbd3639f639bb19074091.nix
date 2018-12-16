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
        name = "mediabus-rtp";
        version = "0.3.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016,2017 Sven Heyll, Lindenbaum GmbH";
      maintainer = "sven.heyll@lindenbaum.eu";
      author = "Sven Heyll";
      homepage = "https://github.com/lindenbaum/mediabus-rtp";
      url = "";
      synopsis = "Receive and Send RTP Packets";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.lifted-async)
          (hsPkgs.mediabus)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.parallel)
          (hsPkgs.primitive)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.spool)
          (hsPkgs.stm)
          (hsPkgs.streaming-commons)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "mediabus-demo-rtp-alaw-player" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.mediabus)
            (hsPkgs.mediabus-rtp)
            (hsPkgs.data-default)
            (hsPkgs.lens)
            (hsPkgs.lifted-async)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.tagged)
            (hsPkgs.streaming-commons)
            (hsPkgs.time)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.mediabus)
            (hsPkgs.mediabus-rtp)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.singletons)
            (hsPkgs.spool)
            (hsPkgs.stm)
            (hsPkgs.tagged)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.type-spec)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }