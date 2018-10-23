{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { analyse = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fibon";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dmp@rice.edu";
      author = "David M Peixotto";
      homepage = "http://github.com/dmpots/fibon/wiki";
      url = "";
      synopsis = "Tools for running and analyzing Haskell benchmarks";
      description = "Fibon is a set of tools for running and analyzing benchmark programs.\nThe fibon package contains the tools for benchmarking, but not the\nbenchmarks themselves. The package will build, but will not have any\nbenchmarks to run. A set of benchmarks can be found in the github repo\n\n<http://github.com/dmpots/fibon-benchmarks>\n\nFibon is a pure Haskell framework for running and analyzing benchmarks. Cabal\nis used for building the benchmarks, and the benchmark harness, configuration\nfiles, and benchmark descriptions are all written in Haskell. The benchmark\ndescriptions and run configurations are all statically compiled into the\nbenchmark runner to ensure that configuration errors are found at compile\ntime.\n\nThe Fibon tools are not tied to any compiler infrastructure and can build\nbenchmarks using any compiler supported by cabal. However, there are some\nextra features available when using GHC to build the benchmarks:\n* Support in config files for inplace GHC HEAD builds\n* Support in `fibon-run` for collecting GC stats from GHC compiled programs\n* Support in `fibon-analyse` for reading GC stats from Fibon result files\n\nFor more details see the Fibon wiki: <http://github.com/dmpots/fibon/wiki>";
      buildType = "Custom";
    };
    components = {
      exes = {
        "fibon-run" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.statistics)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.syb)
          ];
        };
        "fibon-init" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.Cabal)
          ];
        };
        "fibon-analyse" = {
          depends  = pkgs.lib.optionals (flags.analyse) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.tabular)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.regex-compat)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.cereal)
            (hsPkgs.syb)
          ];
        };
      };
    };
  }