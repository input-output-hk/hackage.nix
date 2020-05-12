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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "concurrency-benchmarks"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2018 Harendra Kumar";
      maintainer = "Harendra Kumar";
      author = "Harendra Kumar";
      homepage = "http://github.com/composewell/concurrency-benchmarks";
      url = "";
      synopsis = "Benchmarks to compare concurrency APIs";
      description = "Benchmarks to compare the pure concurrency overhead of various flavors of\nconcurrent @streamly@ streams and the @async@ package.\n\nUse @cabal new-bench@ or @stack bench@ to run the benchmarks. To generate\ncharts, run the benchmarks with @--csv-raw=results.csv@ option and then run\n@makecharts results.csv@. Charts are generated in the @charts@ directory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "makecharts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bench-graph" or (errorHandler.buildDepError "bench-graph"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."getopt-generics" or (errorHandler.buildDepError "getopt-generics"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            ];
          buildable = true;
          };
        };
      };
    }