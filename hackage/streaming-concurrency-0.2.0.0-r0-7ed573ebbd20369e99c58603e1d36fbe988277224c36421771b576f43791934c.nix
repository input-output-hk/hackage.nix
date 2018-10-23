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
        name = "streaming-concurrency";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Concurrency support for the streaming ecosystem";
      description = "The primary purpose for this library is to be able to merge multiple\n@Stream@s together.  However, it is possible to build higher\nabstractions on top of this to be able to also feed multiple\nstreams.";
      buildType = "Simple";
    };
    components = {
      "streaming-concurrency" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.lifted-async)
          (hsPkgs.monad-control)
          (hsPkgs.stm)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-with)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "merging" = {
          depends  = [
            (hsPkgs.streaming-concurrency)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
          ];
        };
      };
    };
  }