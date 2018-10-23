{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { fast = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "criterion";
        version = "1.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2016 Bryan O'Sullivan and others";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://www.serpentine.com/criterion";
      url = "";
      synopsis = "Robust, reliable performance measurement and analysis";
      description = "This library provides a powerful but simple way to measure software\nperformance.  It provides both a framework for executing and\nanalysing benchmarks and a set of driver functions that makes it\neasy to build and run benchmarks, and to analyse their results.\n\nThe fastest way to get started is to read the\n<http://www.serpentine.com/criterion/tutorial.html online tutorial>,\nfollowed by the documentation and examples in the \"Criterion.Main\"\nmodule.\n\nFor examples of the kinds of reports that criterion generates, see\n<http://www.serpentine.com/criterion the home page>.";
      buildType = "Simple";
    };
    components = {
      "criterion" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.code-page)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.Glob)
          (hsPkgs.microstache)
          (hsPkgs.js-flot)
          (hsPkgs.js-jquery)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.statistics)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
      exes = {
        "criterion-report" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.optparse-applicative)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
        };
      };
      tests = {
        "sanity" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.statistics)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector)
            (hsPkgs.aeson)
          ];
        };
        "cleanup" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }