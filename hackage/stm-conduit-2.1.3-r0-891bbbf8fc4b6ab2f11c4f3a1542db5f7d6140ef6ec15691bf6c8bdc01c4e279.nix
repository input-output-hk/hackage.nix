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
        name = "stm-conduit";
        version = "2.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cgaebel@uwaterloo.ca";
      author = "Clark Gaebel";
      homepage = "https://github.com/wowus/stm-conduit";
      url = "";
      synopsis = "Introduces conduits to channels, and promotes using\nconduits concurrently.";
      description = "Provides two simple conduit wrappers around STM\nchannels - a source and a sink.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.async)
          (hsPkgs.monad-control)
          (hsPkgs.monad-loops)
          (hsPkgs.lifted-base)
          (hsPkgs.lifted-async)
        ];
      };
      tests = {
        "stm-conduit-tests" = {
          depends = [
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
          ];
        };
      };
    };
  }