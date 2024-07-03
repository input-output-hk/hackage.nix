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
    flags = {
      fusion-plugin = false;
      inspection = false;
      debug = false;
      dev = false;
      has-llvm = false;
      opt = true;
      limit-build-mem = false;
      use-unliftio = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "streamly"; version = "0.10.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Composewell Technologies";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "https://streamly.composewell.com";
      url = "";
      synopsis = "Streaming, dataflow programming and declarative concurrency";
      description = "For upgrading to streamly-0.9.0+ please read the\n<https://github.com/composewell/streamly/blob/streamly-0.10.0/docs/User/Project/Upgrading-0.8-to-0.9.md Streamly-0.9.0 upgrade guide>.\n\nStreamly comprises two packages, the\n<https://hackage.haskell.org/package/streamly-core streamly-core> package\nprovides functionality that depends only on boot libraries, and\nthe <https://hackage.haskell.org/package/streamly streamly> package\nprovides additional functionality like concurrency, time, lifted\nexceptions, and networking.  For unified documentation visit\n<https://streamly.composewell.com the streamly website>.\n\nStreamly provides unified, modular building blocks to build\nhigh-performance, concurrent, scalable applications in Haskell.  Stream\nfusion optimizations in streamly enable exceptional modularity with\nhigh performance comparable to C. Streamly complements the Haskell\n<https://hackage.haskell.org/package/base base> package, supplying\nadditional functionality to quickly build general-purpose applications\nin Haskell. For high-level functionality built over streamly like\nstreaming OS processes, shell programming, GNU coreutils,\nstatistics, and compression libraries please see the\n<https://streamly.composewell.com/ecosystem.html streamly ecosystem packages>.\n\nPerformance with modularity:\n\n* Performance on par with C (<https://github.com/composewell/streaming-benchmarks Benchmarks>)\n* API close to standard Haskell lists (<https://github.com/composewell/streamly-examples Examples>)\n* Declarative concurrency with automatic scaling\n* Filesystem, fsnotify, network, and Unicode support included\n* Fast binary serialization (with optional JSON like features)\n* More functionality is provided via many (<https://streamly.composewell.com/ecosystem.html ecosystem packages>)\n\nUnified and powerful abstractions:\n\n* Unifies streams, arrays, folds, and parsers\n* Unifies @Data.List@, @list-t@, and @logict@ with streaming\n* Unifies concurrency with standard streaming abstractions\n* Unifies reactive, time-domain programming with streaming\n* Unifies binary serialization and unboxed arrays\n* Interworks with other streaming libraries";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = ((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."lockfree-queue" or (errorHandler.buildDepError "lockfree-queue"))
          (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.6") (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))) ++ (if flags.use-unliftio
          then [
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ]
          else [
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          ])) ++ pkgs.lib.optional (flags.dev) (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))) ++ pkgs.lib.optional (system.isLinux) (hsPkgs."directory" or (errorHandler.buildDepError "directory"))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))) ++ pkgs.lib.optional (system.isOsx) (hsPkgs."directory" or (errorHandler.buildDepError "directory"))) ++ pkgs.lib.optional (flags.inspection) (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))) ++ pkgs.lib.optional (flags.dev && flags.inspection) (hsPkgs."inspection-and-dev-flags-cannot-be-used-together" or (errorHandler.buildDepError "inspection-and-dev-flags-cannot-be-used-together"));
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa"));
        buildable = true;
      };
    };
  }