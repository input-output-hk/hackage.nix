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
    flags = { dev = false; examples = false; examples-sdl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "streamly"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/composewell/streamly";
      url = "";
      synopsis = "Beautiful Streaming, Concurrent and Reactive Composition";
      description = "Streamly, short for streaming concurrently, is a simple yet powerful\nstreaming library with concurrent merging and concurrent nested looping\nsupport. A stream is just like a list except that it is a list of monadic\nactions rather than pure values.  Streamly streams can be generated,\nconsumed, combined, or transformed serially or concurrently. We can loop over\na stream serially or concurrently.  We can also have serial or concurrent\nnesting of loops. For those familiar with list transformer concept streamly\nis a concurrent list transformer. Streamly uses standard composition\nabstractions. Concurrent composition is just the same as serial composition\nexcept that we use a simple combinator to request a concurrent composition\ninstead of serial. The programmer does not have to be aware of threads,\nlocking or synchronization to write scalable concurrent programs.\n\nStreamly provides functionality that is equivalent to streaming libraries\nlike <https://hackage.haskell.org/package/pipes pipes> and\n<https://hackage.haskell.org/package/conduit conduit> but with a simple list\nlike API. The streaming API of streamly is close to the monadic streams API\nof the <https://hackage.haskell.org/package/vector vector> package and\nsimilar in concept to the\n<https://hackage.haskell.org/package/streaming streaming> package. In\naddition to the streaming functionality, streamly subsumes the functionality\nof list transformer libraries like @pipes@ or\n<https://hackage.haskell.org/package/list-t list-t> and also the logic\nprogramming library <https://hackage.haskell.org/package/logict logict>. On\nthe concurrency side, it subsumes the functionality of the\n<https://hackage.haskell.org/package/async async> package. Because it\nsupports streaming with concurrency we can write FRP applications similar in\nconcept to <https://hackage.haskell.org/package/Yampa Yampa> or\n<https://hackage.haskell.org/package/reflex reflex>.\n\nStreamly has excellent performance, see\n<https://github.com/composewell/streaming-benchmarks streaming-benchmarks>\nfor a comparison of popular streaming libraries on micro-benchmarks.  For\nfile IO, currently the library provides only one API to stream the lines in\nthe file as Strings.  Future versions will provide better streaming file IO\noptions.  Streamly interworks with the popular streaming libraries, see the\ninterworking section in \"Streamly.Tutorial\".\n\nWhere to find more information:\n\n* @README@ shipped with the package for a quick overview\n* \"Streamly.Tutorial\" module in the haddock documentation for a detailed introduction\n* @examples@ directory in the package for some simple practical examples";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."lockfree-queue" or (errorHandler.buildDepError "lockfree-queue"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      exes = {
        "chart-linear" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bench-graph" or (errorHandler.buildDepError "bench-graph"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = if flags.dev then true else false;
          };
        "chart-nested" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bench-graph" or (errorHandler.buildDepError "bench-graph"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = if flags.dev then true else false;
          };
        "SearchQuery" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            ];
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
          };
        "ListDir" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers")));
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
          };
        "MergeSort" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
          };
        "AcidRain" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8.0") [
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ]);
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
          };
        "CirclingSquare" = {
          depends = (pkgs.lib).optionals (flags.examples-sdl) [
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
        };
      };
    }