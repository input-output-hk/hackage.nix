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
    flags = { exe = false; };
    package = {
      specVersion = "1.10.0";
      identifier = { name = "BenchmarkHistory"; version = "0.0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2015";
      homepage = "https://github.com/choener/BenchmarkHistory";
      url = "";
      synopsis = "Benchmark functions with history";
      description = "Benchmark functions via @GHC.Stats@ and keep a history of\nrunning time and allocation profiles.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "BenchmarkHistogram" = {
          depends = (pkgs.lib).optionals (flags.exe) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."BenchmarkHistory" or (errorHandler.buildDepError "BenchmarkHistory"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = if flags.exe then true else false;
          };
        };
      };
    }