let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "streamly"; version = "0.5.2"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."heaps" or (buildDepError "heaps"))
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."lockfree-queue" or (buildDepError "lockfree-queue"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
        };
      exes = {
        "chart" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bench-show" or (buildDepError "bench-show"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "SearchQuery" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ];
          };
        "ListDir" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or (buildDepError "transformers")));
          };
        "MergeSort" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "AcidRain" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8.0") [
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ]);
          };
        "CirclingSquare" = {
          depends = (pkgs.lib).optionals (flags.examples-sdl) [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            ];
          };
        "ControlFlow" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups")));
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            ];
          };
        "properties" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or (buildDepError "transformers"));
          };
        "maxrate" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "loops" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "nested-loops" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "parallel-loops" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      benchmarks = {
        "linear" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            ];
          };
        "linear-async" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            ];
          };
        "linear-rate" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            ];
          };
        "nested" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            ];
          };
        "base" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."heaps" or (buildDepError "heaps"))
            (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
            (hsPkgs."lockfree-queue" or (buildDepError "lockfree-queue"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          };
        };
      };
    }