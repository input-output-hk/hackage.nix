{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "testbench";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Create tests and benchmarks together";
      description = "Test your benchmarks!  Benchmark your tests!\n\nIt's too easy to accidentally try and benchmark apples and oranges\ntogether.  Wouldn't it be nice if you could somehow guarantee that\nyour benchmarks satisfy some simple tests (e.g. a group of comparisons\nall return the same value)?\n\nFurthermore, trying to compare multiple inputs/functions against each\nother requires a lot of boilerplate, making it even easier to\naccidentally compare the wrong things (e.g. using `whnf` instead of\n`nf`).\n\n/testbench/ aims to help solve these problems and more by making it\neasier to write unit tests and benchmarks together by stating up-front\nwhat requirements are needed and then using simple functions to state\nthe next parameter to be tested/benchmarked.";
      buildType = "Simple";
    };
    components = {
      "testbench" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.criterion)
          (hsPkgs.dlist)
          (hsPkgs.deepseq)
          (hsPkgs.HUnit)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.statistics)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-cassava)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
          (hsPkgs.weigh)
        ];
      };
      exes = {
        "examples" = {
          depends  = [
            (hsPkgs.testbench)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }