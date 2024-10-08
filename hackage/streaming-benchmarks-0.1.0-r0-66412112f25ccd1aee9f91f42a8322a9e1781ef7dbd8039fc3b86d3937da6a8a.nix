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
      identifier = { name = "streaming-benchmarks"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2017 Harendra Kumar";
      maintainer = "Harendra Kumar";
      author = "Harendra Kumar";
      homepage = "http://github.com/composewell/streaming-benchmarks";
      url = "";
      synopsis = "Benchmarks to compare streaming packages";
      description = "Comprehensive, carefully crafted benchmarks for streaming operations and\ntheir comparisons across notable Haskell streaming libraries including\n`streaming`, `machines`, `pipes`, `conduit` and `streamly`.\n<http://hackage.haskell.org/package/streamly Streamly> is a new\nstreaming library with high level and composable concurrency built-in, it is\nthe primary motivation for these benchmarks. We have put a lot of effort to\nmake sure that the benchmarks are correct, fair and reproducible.  Please\nreport if you find something that is not right.\n\nIf you are using @stack@ then use @./run.sh@ to run the benchmarks;\ncharts will be generated in the `charts` directory.\n\nWith any build tool, run the benchmarks with\n@--csv=results.csv@ as arguments and then use @makecharts results.csv@ to\ncreate the charts. In case you want to be pedantic about accurate results\nthen you can run the benchmarks in the same way as @run.sh@ invokes them.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "makecharts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
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
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."list-transformer" or (errorHandler.buildDepError "list-transformer"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          ];
          buildable = true;
        };
      };
    };
  }