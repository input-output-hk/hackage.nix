{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "stm-conduit";
        version = "4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cg.wowus.cg@gmail.com";
      author = "Clark Gaebel";
      homepage = "https://github.com/cgaebel/stm-conduit";
      url = "";
      synopsis = "Introduces conduits to channels, and promotes using conduits concurrently.";
      description = "Provides two simple conduit wrappers around STM channels - a source and a sink.";
      buildType = "Simple";
    };
    components = {
      "stm-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.cereal)
          (hsPkgs.cereal-conduit)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.resourcet)
          (hsPkgs.async)
          (hsPkgs.monad-loops)
          (hsPkgs.unliftio)
        ];
      };
      tests = {
        "stm-conduit-doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "stm-conduit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.stm)
            (hsPkgs.stm-conduit)
            (hsPkgs.conduit)
            (hsPkgs.transformers)
            (hsPkgs.stm-chans)
            (hsPkgs.resourcet)
            (hsPkgs.directory)
            (hsPkgs.unliftio)
          ];
        };
      };
    };
  }