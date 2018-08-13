{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      chart = false;
      gtk = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "criterion";
        version = "0.5.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009, 2010, 2011 Bryan O'Sullivan";
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
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.parsec)
          (hsPkgs.statistics)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ] ++ pkgs.lib.optionals (_flags.chart) [
          (hsPkgs.Chart)
          (hsPkgs.data-accessor)
        ];
      };
    };
  }