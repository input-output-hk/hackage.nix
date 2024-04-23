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
      no-fusion = false;
      streamk = false;
      use-c-malloc = false;
      opt = true;
      limit-build-mem = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "streamly"; version = "0.8.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Composewell Technologies";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "https://streamly.composewell.com";
      url = "";
      synopsis = "Dataflow programming and declarative concurrency";
      description = "Browse the documentation at https://streamly.composewell.com.\n\nStreamly is a streaming framework to build reliable and scalable\nsoftware systems from modular building blocks using dataflow\nprogramming and declarative concurrency.  Stream fusion optimizations\nin streamly result in high-performance, modular combinatorial\nprogramming.\n\nPerformance with simplicity:\n\n* Performance on par with C (<https://github.com/composewell/streaming-benchmarks Benchmarks>)\n* API close to standard Haskell lists (<https://github.com/composewell/streamly-examples Examples>)\n* Declarative concurrency with automatic scaling\n* Filesystem, fsnotify, network, and Unicode support included\n* More functionality provided via many ecosystem packages\n\nUnified and powerful abstractions:\n\n* Unifies unfolds, arrays, folds, and parsers with streaming\n* Unifies @Data.List@, @list-t@, and @logict@ with streaming\n* Unifies concurrency with standard streaming abstractions\n* Provides time-domain combinators for reactive programming\n* Interworks with bytestring and streaming libraries";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."lockfree-queue" or (errorHandler.buildDepError "lockfree-queue"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."fusion-plugin-types" or (errorHandler.buildDepError "fusion-plugin-types"))
          (hsPkgs."unicode-data" or (errorHandler.buildDepError "unicode-data"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))) ++ pkgs.lib.optionals (flags.inspection) [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
        ]) ++ pkgs.lib.optional (flags.dev && flags.inspection) (hsPkgs."inspection-and-dev-flags-cannot-be-used-together" or (errorHandler.buildDepError "inspection-and-dev-flags-cannot-be-used-together"));
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa"));
        buildable = true;
      };
    };
  }