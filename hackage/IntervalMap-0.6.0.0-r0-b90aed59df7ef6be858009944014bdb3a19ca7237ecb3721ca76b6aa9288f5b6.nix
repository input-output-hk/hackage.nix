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
        name = "IntervalMap";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2011-2018 Christoph Breitkopf";
      maintainer = "Christoph Breitkopf <chbreitkopf@gmail.com>";
      author = "Christoph Breitkopf";
      homepage = "http://www.chr-breitkopf.de/comp/IntervalMap";
      url = "";
      synopsis = "Containers for intervals, with efficient search.";
      description = "Ordered containers of intervals, with efficient search\nfor all keys containing a point or overlapping an interval.\nSee the example code on the home page for a quick introduction.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "TestInterval" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
          ];
        };
        "TestGenericInterval" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
          ];
        };
        "TestIntervalMap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
          ];
        };
        "TestIntervalSet" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
          ];
        };
      };
      benchmarks = {
        "bench-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
          ];
        };
        "bench-generic-lazy-strict" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
          ];
        };
        "bench-set" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
          ];
        };
        "weigh-allocs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.deepseq)
            (hsPkgs.weigh)
          ];
        };
        "bench-compare-types" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.deepseq)
            (hsPkgs.fingertree)
            (hsPkgs.SegmentTree)
            (hsPkgs.criterion)
          ];
        };
        "bench-rb-impl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }