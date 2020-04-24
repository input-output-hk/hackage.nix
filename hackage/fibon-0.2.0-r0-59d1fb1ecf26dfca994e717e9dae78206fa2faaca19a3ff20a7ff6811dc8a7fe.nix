{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      synopsis = "Tools for running and analyzing Haskell benchmarks";
      description = "Fibon is a set of tools for running and analyzing benchmark programs.\nThe fibon package contains the tools for benchmarking, but not the\nbenchmarks themselves. The package will build, but will not have any\nbenchmarks to run. A set of benchmarks can be found in the github repo\n\n<http://github.com/dmpots/fibon-benchmarks>\n\nFibon is a pure Haskell framework for running and analyzing benchmarks. Cabal\nis used for building the benchmarks, and the benchmark harness, configuration\nfiles, and benchmark descriptions are all written in Haskell. The benchmark\ndescriptions and run configurations are all statically compiled into the\nbenchmark runner to ensure that configuration errors are found at compile\ntime.\n\nThe Fibon tools are not tied to any compiler infrastructure and can build\nbenchmarks using any compiler supported by cabal. However, there are some\nextra features available when using GHC to build the benchmarks:\n* Support in config files for inplace GHC HEAD builds\n* Support in `fibon-run` for collecting GC stats from GHC compiled programs\n* Support in `fibon-analyse` for reading GC stats from Fibon result files\n\nFor more details see the Fibon wiki: <http://github.com/dmpots/fibon/wiki>";
      buildType = "Custom";
      };
    components = {
      exes = {
        "fibon-run" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ];
          buildable = true;
          };
        "fibon-init" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            ];
          buildable = true;
          };
        "fibon-analyse" = {
          depends = (pkgs.lib).optionals (flags.analyse) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tabular" or ((hsPkgs.pkgs-errors).buildDepError "tabular"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ];
          buildable = if flags.analyse then true else false;
          };
        };
      };
    }