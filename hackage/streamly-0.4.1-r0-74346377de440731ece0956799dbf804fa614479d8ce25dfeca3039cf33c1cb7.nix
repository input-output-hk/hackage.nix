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
      diag = false;
      dev = false;
      no-fusion = false;
      streamk = false;
      examples = false;
      examples-sdl = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "streamly"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/composewell/streamly";
      url = "";
      synopsis = "Beautiful Streaming, Concurrent and Reactive Composition";
      description = "Streamly, short for streaming concurrently, provides monadic streams, with a\nsimple API, almost identical to standard lists, and an in-built support for\nconcurrency.  By using stream-style combinators on stream composition,\nstreams can be generated, merged, chained, mapped, zipped, and consumed\nconcurrently – providing a generalized high level programming framework\nunifying streaming and concurrency. Controlled concurrency allows even\ninfinite streams to be evaluated concurrently.  Concurrency is auto scaled\nbased on feedback from the stream consumer.  The programmer does not have to\nbe aware of threads, locking or synchronization to write scalable concurrent\nprograms.\n\nThe basic streaming functionality of streamly is equivalent to that provided by\nstreaming libraries like\n<https://hackage.haskell.org/package/vector vector>,\n<https://hackage.haskell.org/package/streaming streaming>,\n<https://hackage.haskell.org/package/pipes pipes>, and\n<https://hackage.haskell.org/package/conduit conduit>.\nIn addition to providing streaming functionality, streamly subsumes the\nfunctionality of list transformer libraries like @pipes@ or\n<https://hackage.haskell.org/package/list-t list-t> and also the logic\nprogramming library <https://hackage.haskell.org/package/logict logict>. On\nthe concurrency side, it subsumes the functionality of the\n<https://hackage.haskell.org/package/async async> package. Because it\nsupports streaming with concurrency we can write FRP applications similar in\nconcept to <https://hackage.haskell.org/package/Yampa Yampa> or\n<https://hackage.haskell.org/package/reflex reflex>.\n\nFor file IO, currently the library provides only one API to stream the lines\nin the file as Strings.  Future versions will provide better streaming file\nIO options.  Streamly interworks with the popular streaming libraries, see\nthe interworking section in \"Streamly.Tutorial\".\n\nWhy use streamly?\n\n* /Simplicity/: Simple list like streaming API, if you know how to use lists\nthen you know how to use streamly. This library is built with simplicity\nand ease of use as a primary design goal.\n* /Concurrency/: Simple, powerful, and scalable concurrency.  Concurrency is\nbuilt-in, and not intrusive, concurrent programs are written exactly the\nsame way as non-concurrent ones.\n* /Generality/: Unifies functionality provided by several disparate packages\n(streaming, concurrency, list transformer, logic programming, reactive\nprogramming) in a concise API.\n* /Performance/: Streamly is designed for high performance.\nIt employs stream fusion optimizations for best possible performance.\nSerial peformance is equivalent to the venerable `vector` library in most\ncases and even better in some cases. Concurrent performance is unbeatable.\nSee\n<https://github.com/composewell/streaming-benchmarks streaming-benchmarks>\nfor a comparison of popular streaming libraries on micro-benchmarks.\n\nWhere to find more information:\n\n* @README@ shipped with the package for a quick overview\n* \"Streamly.Tutorial\" module in the haddock documentation for a detailed introduction\n* @examples@ directory in the package for some simple practical examples";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."lockfree-queue" or (errorHandler.buildDepError "lockfree-queue"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      exes = {
        "chart-linear" = {
          depends = pkgs.lib.optionals (flags.dev) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bench-graph" or (errorHandler.buildDepError "bench-graph"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
          buildable = if flags.dev then true else false;
        };
        "chart-nested" = {
          depends = pkgs.lib.optionals (flags.dev) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bench-graph" or (errorHandler.buildDepError "bench-graph"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
          buildable = if flags.dev then true else false;
        };
        "SearchQuery" = {
          depends = pkgs.lib.optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          ];
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
        };
        "ListDir" = {
          depends = pkgs.lib.optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers")));
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
        };
        "MergeSort" = {
          depends = pkgs.lib.optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
        };
        "AcidRain" = {
          depends = pkgs.lib.optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0") [
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ]);
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
        };
        "CirclingSquare" = {
          depends = pkgs.lib.optionals (flags.examples-sdl) [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          ];
          buildable = if flags.examples-sdl then true else false;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
          buildable = true;
        };
        "properties" = {
          depends = [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
        "loops" = {
          depends = [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "nested-loops" = {
          depends = [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "parallel-loops" = {
          depends = [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "linear" = {
          depends = [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
          ];
          buildable = true;
        };
        "nested" = {
          depends = [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
          ];
          buildable = true;
        };
        "base" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
            (hsPkgs."lockfree-queue" or (errorHandler.buildDepError "lockfree-queue"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
        };
      };
    };
  }