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
        name = "gauge";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2016 Bryan O'Sullivan and others";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/vincenthz/hs-gauge";
      url = "";
      synopsis = "small framework for performance measurement and analysis";
      description = "This library provides a powerful but simple way to measure software\nperformance.  It provides both a framework for executing and\nanalysing benchmarks and a set of driver functions that makes it\neasy to build and run benchmarks, and to analyse their results.";
      buildType = "Simple";
    };
    components = {
      "gauge" = {
        depends  = [
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.basement)
          (hsPkgs.foundation)
          (hsPkgs.code-page)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mwc-random)
          (hsPkgs.optparse-applicative)
          (hsPkgs.vector)
          (hsPkgs.math-functions)
        ];
      };
      tests = {
        "sanity" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.gauge)
            (hsPkgs.deepseq)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.gauge)
            (hsPkgs.statistics)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector)
          ];
        };
        "cleanup" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.gauge)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.foundation)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }