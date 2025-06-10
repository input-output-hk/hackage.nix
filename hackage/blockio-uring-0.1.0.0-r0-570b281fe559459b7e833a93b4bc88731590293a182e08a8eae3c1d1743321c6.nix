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
      specVersion = "3.4";
      identifier = { name = "blockio-uring"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Well-Typed LLP 2022 - 2025";
      maintainer = "duncan@well-typed.com, joris@well-typed.com";
      author = "Duncan Coutts";
      homepage = "";
      url = "";
      synopsis = "Perform batches of asynchronous disk IO operations.";
      description = "This library supports disk I/O operations using the Linux io_uring API. The\nlibrary supports submitting large batches of I/O operations in one go. It also\nsupports submitting batches from multiple Haskell threads concurrently. The\nI/O only blocks the calling thread, not all other Haskell threads. In this\nstyle, using a combination of batching and concurrency, it is possible to\nsaturate modern SSDs, thus achieving maximum I/O throughput. This is\nparticularly helpful for performing lots of random reads.\n\nThe library only supports recent versions of Linux, because it uses the\nio_uring kernel API. It only supports disk operations, not socket operations.\nThe library is tested only with Ubuntu (versions 22.04 and 24.04), but\nother Linux distributions should probably also work out of the box. Let us\nknow if you run into any problems!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        pkgconfig = [
          (pkgconfPkgs."liburing" or (errorHandler.pkgConfDepError "liburing"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockio-uring" or (errorHandler.buildDepError "blockio-uring"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "test-internals" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          pkgconfig = [
            (pkgconfPkgs."liburing" or (errorHandler.pkgConfDepError "liburing"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          pkgconfig = [
            (pkgconfPkgs."liburing" or (errorHandler.pkgConfDepError "liburing"))
          ];
          buildable = true;
        };
      };
    };
  }