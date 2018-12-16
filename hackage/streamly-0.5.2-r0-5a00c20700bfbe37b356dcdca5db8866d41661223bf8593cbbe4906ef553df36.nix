{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      dev = false;
      no-fusion = false;
      streamk = false;
      examples = false;
      examples-sdl = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "streamly";
        version = "0.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/composewell/streamly";
      url = "";
      synopsis = "Beautiful Streaming, Concurrent and Reactive Composition";
      description = "Streamly, short for streaming concurrently, provides monadic streams, with a\nsimple API, almost identical to standard lists, and an in-built support for\nconcurrency.  By using stream-style combinators on stream composition,\nstreams can be generated, merged, chained, mapped, zipped, and consumed\nconcurrently – providing a generalized high level programming framework\nunifying streaming and concurrency. Controlled concurrency allows even\ninfinite streams to be evaluated concurrently.  Concurrency is auto scaled\nbased on feedback from the stream consumer.  The programmer does not have to\nbe aware of threads, locking or synchronization to write scalable concurrent\nprograms.\n\nThe basic streaming functionality of streamly is equivalent to that provided by\nstreaming libraries like\n<https://hackage.haskell.org/package/vector vector>,\n<https://hackage.haskell.org/package/streaming streaming>,\n<https://hackage.haskell.org/package/pipes pipes>, and\n<https://hackage.haskell.org/package/conduit conduit>.\nIn addition to providing streaming functionality, streamly subsumes the\nfunctionality of list transformer libraries like @pipes@ or\n<https://hackage.haskell.org/package/list-t list-t> and also the logic\nprogramming library <https://hackage.haskell.org/package/logict logict>. On\nthe concurrency side, it subsumes the functionality of the\n<https://hackage.haskell.org/package/async async> package. Because it\nsupports streaming with concurrency we can write FRP applications similar in\nconcept to <https://hackage.haskell.org/package/Yampa Yampa> or\n<https://hackage.haskell.org/package/reflex reflex>.\n\nFor file IO, currently the library provides only one API to stream the lines\nin the file as Strings.  Future versions will provide better streaming file\nIO options.  Streamly interworks with the popular streaming libraries, see\nthe interworking section in \"Streamly.Tutorial\".\n\nWhy use streamly?\n\n* /Simplicity/: Simple list like streaming API, if you know how to use lists\nthen you know how to use streamly. This library is built with simplicity\nand ease of use as a primary design goal.\n* /Concurrency/: Simple, powerful, and scalable concurrency.  Concurrency is\nbuilt-in, and not intrusive, concurrent programs are written exactly the\nsame way as non-concurrent ones.\n* /Generality/: Unifies functionality provided by several disparate packages\n(streaming, concurrency, list transformer, logic programming, reactive\nprogramming) in a concise API.\n* /Performance/: Streamly is designed for high performance.\nIt employs stream fusion optimizations for best possible performance.\nSerial peformance is equivalent to the venerable `vector` library in most\ncases and even better in some cases. Concurrent performance is unbeatable.\nSee\n<https://github.com/composewell/streaming-benchmarks streaming-benchmarks>\nfor a comparison of popular streaming libraries on micro-benchmarks.\n\nWhere to find more information:\n\n* /Quick Overview/: <src/README.md README file> in the package\n* /Detailed Tutorial/: \"Streamly.Tutorial\" module in the haddock documentation\n* /Reference Documentation/: Haddock documentation for the respective modules\n* /Examples/: <src/examples examples directory> in the package\n* /Guides/: <src/docs docs directory> in the package, for documentation on\nadvanced topics, limitations, semantics of the library or on specific use\ncases.\n* <https://github.com/composewell/streaming-benchmarks Streaming Benchmarks>\n* <https://github.com/composewell/concurrency-benchmarks Concurrency Benchmarks>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.heaps)
          (hsPkgs.atomic-primops)
          (hsPkgs.lockfree-queue)
          (hsPkgs.clock)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
      exes = {
        "chart" = {
          depends = pkgs.lib.optionals (flags.dev) [
            (hsPkgs.base)
            (hsPkgs.bench-show)
            (hsPkgs.split)
            (hsPkgs.transformers)
          ];
        };
        "SearchQuery" = {
          depends = pkgs.lib.optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.http-conduit)
          ];
        };
        "ListDir" = {
          depends = pkgs.lib.optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.path-io)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.transformers));
        };
        "MergeSort" = {
          depends = pkgs.lib.optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.random)
          ];
        };
        "AcidRain" = {
          depends = pkgs.lib.optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.mtl)
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0") [
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
          ]);
        };
        "CirclingSquare" = {
          depends = pkgs.lib.optionals (flags.examples-sdl) [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.SDL)
          ];
        };
        "ControlFlow" = {
          depends = pkgs.lib.optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups));
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.exceptions)
          ];
        };
        "properties" = {
          depends = [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.transformers);
        };
        "maxrate" = {
          depends = pkgs.lib.optionals (flags.dev) [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.clock)
            (hsPkgs.hspec)
            (hsPkgs.random)
          ];
        };
        "loops" = {
          depends = [
            (hsPkgs.streamly)
            (hsPkgs.base)
          ];
        };
        "nested-loops" = {
          depends = [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.random)
          ];
        };
        "parallel-loops" = {
          depends = [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.random)
          ];
        };
      };
      benchmarks = {
        "linear" = {
          depends = [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.gauge)
          ];
        };
        "linear-async" = {
          depends = [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.gauge)
          ];
        };
        "linear-rate" = {
          depends = [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.gauge)
          ];
        };
        "nested" = {
          depends = [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.gauge)
          ];
        };
        "base" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.gauge)
            (hsPkgs.ghc-prim)
            (hsPkgs.containers)
            (hsPkgs.heaps)
            (hsPkgs.atomic-primops)
            (hsPkgs.lockfree-queue)
            (hsPkgs.clock)
            (hsPkgs.exceptions)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
        };
      };
    };
  }