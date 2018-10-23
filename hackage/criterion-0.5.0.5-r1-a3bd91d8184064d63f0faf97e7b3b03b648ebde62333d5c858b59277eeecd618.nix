{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { chart = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "criterion";
        version = "0.5.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2010 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://bitbucket.org/bos/criterion";
      url = "";
      synopsis = "Robust, reliable performance measurement and analysis";
      description = "This library provides a powerful but simple way to measure the\nperformance of Haskell code.  It provides both a framework for\nexecuting and analysing benchmarks and a set of driver functions\nthat makes it easy to build and run benchmarks, and to analyse their\nresults.\n\nThe fastest way to get started is to read the documentation and\nexamples in the Criterion.Main module.";
      buildType = "Simple";
    };
    components = {
      "criterion" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
          (hsPkgs.statistics)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ] ++ pkgs.lib.optionals (flags.chart) [
          (hsPkgs.Chart)
          (hsPkgs.data-accessor)
        ];
      };
    };
  }