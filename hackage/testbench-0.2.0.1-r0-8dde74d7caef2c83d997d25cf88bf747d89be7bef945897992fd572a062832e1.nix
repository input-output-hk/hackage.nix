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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "testbench"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Create tests and benchmarks together";
      description = "Test your benchmarks!  Benchmark your tests!\n\nIt's too easy to accidentally try and benchmark apples and oranges\ntogether.  Wouldn't it be nice if you could somehow guarantee that\nyour benchmarks satisfy some simple tests (e.g. a group of comparisons\nall return the same value)?\n\nFurthermore, trying to compare multiple inputs/functions against each\nother requires a lot of boilerplate, making it even easier to\naccidentally compare the wrong things (e.g. using `whnf` instead of\n`nf`).\n\n/testbench/ aims to help solve these problems and more by making it\neasier to write unit tests and benchmarks together by stating up-front\nwhat requirements are needed and then using simple functions to state\nthe next parameter to be tested/benchmarked.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-cassava" or (errorHandler.buildDepError "streaming-cassava"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."testbench" or (errorHandler.buildDepError "testbench"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }