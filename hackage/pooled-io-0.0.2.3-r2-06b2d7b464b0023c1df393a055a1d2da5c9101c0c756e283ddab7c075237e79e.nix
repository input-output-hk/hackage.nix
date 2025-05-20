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
    flags = { buildexamples = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "pooled-io"; version = "0.0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/pooled-io/";
      url = "";
      synopsis = "Run jobs on a limited number of threads and support data dependencies";
      description = "The motivation for this package was to run computations on multiple cores\nthat need to write intermediate results to disk.\nThe functions restrict the number of simultaneously running jobs\nto a user given number or to the number of capabilities\nthe Haskell program was started with,\ni.e. the number after the RTS option @-N@.\n\nThere are some flavors of this functionality:\n\n* \"Control.Concurrent.PooledIO.Independent\":\nrun independent actions without results in parallel\n\n* \"Control.Concurrent.PooledIO.Final\":\nrun independent actions with a final result in parallel\n\n* \"Control.Concurrent.PooledIO.InOrder\":\nrun jobs in parallel with data dependencies like @make -j n@\n\nAdditionally there is the module\n\"Control.Concurrent.PooledIO.Sequence\"\nthat helps to serialize I/O actions from multiple threads.\nIt is certainly most useful in connection with\n\"Control.Concurrent.PooledIO.Independent\".\n\nRelated packages:\n\n* @lazyio@: interleave IO actions in a single thread\n\n* @async@: start threads and wait for their results, forward exceptions,\nbut do not throttle concurrency with respect to number of available cores\n\n* @parallel-tasks@:\n\n* @parallel-io@:\n\n* @threadPool@:\n\n* @threads-pool@:\n\n* @cio@:\n\n* @Control-Engine@:\n\n* @taskpool@, @async-pool@:";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."concurrent-split" or (errorHandler.buildDepError "concurrent-split"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      exes = {
        "pooled-io-demo" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."pooled-io" or (errorHandler.buildDepError "pooled-io"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
    };
  }