{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { analyse = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "fibon"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dmp@rice.edu";
      author = "David M Peixotto";
      homepage = "http://github.com/dmpots/fibon/wiki";
      url = "";
      synopsis = "Tools for running and analyzing Haskell benchmarks ";
      description = "Fibon is a set of tools for running and analyzing benchmark programs.\nThe fibon package contains the tools for benchmarking, but not the\nbenchmarks themselves. The package will build, but will not have any\nbenchmarks to run. A set of benchmarks can be found in the github repo\n\n<http://github.com/dmpots/fibon-benchmarks>\n\nFibon is a pure Haskell framework for running and analyzing benchmarks. Cabal\nis used for building the benchmarks, and the benchmark harness, configuration\nfiles, and benchmark descriptions are all written in Haskell. The benchmark\ndescriptions and run configurations are all statically compiled into the\nbenchmark runner to ensure that configuration errors are found at compile\ntime.\n\nThe Fibon tools are not tied to any compiler infrastructure and can build\nbenchmarks using any compiler supported by cabal. However, there are some\nextra features available when using GHC to build the benchmarks:\n* Support in config files for inplace GHC HEAD builds\n* Support in `fibon-run` for collecting GC stats from GHC compiled programs\n* Support in `fibon-analyse` for reading GC stats from Fibon result files\n\nFor more details see the Fibon wiki: <http://github.com/dmpots/fibon/wiki>";
      buildType = "Custom";
      };
    components = {
      exes = {
        "fibon-run" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = true;
          };
        "fibon-init" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ];
          buildable = true;
          };
        "fibon-analyse" = {
          depends = (pkgs.lib).optionals (flags.analyse) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tabular" or (errorHandler.buildDepError "tabular"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = if flags.analyse then true else false;
          };
        };
      };
    }