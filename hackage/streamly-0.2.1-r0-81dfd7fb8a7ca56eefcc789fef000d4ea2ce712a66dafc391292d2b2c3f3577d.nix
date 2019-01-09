{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs.base)
          (hsPkgs.atomic-primops)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.lifted-base)
          (hsPkgs.lockfree-queue)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
        };
      exes = {
        "chart-linear" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs.base)
            (hsPkgs.bench-graph)
            (hsPkgs.split)
            ];
          };
        "chart-nested" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs.base)
            (hsPkgs.bench-graph)
            (hsPkgs.split)
            ];
          };
        "SearchQuery" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.http-conduit)
            ];
          };
        "ListDir" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.path-io)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.transformers));
          };
        "MergeSort" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.random)
            ];
          };
        "AcidRain" = {
          depends = (pkgs.lib).optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.mtl)
            ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8.0") [
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            ]);
          };
        "CirclingSquare" = {
          depends = (pkgs.lib).optionals (flags.examples-sdl) [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.SDL)
            ];
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
            ];
          };
        "loops" = { depends = [ (hsPkgs.streamly) (hsPkgs.base) ]; };
        "nested-loops" = {
          depends = [ (hsPkgs.streamly) (hsPkgs.base) (hsPkgs.random) ];
          };
        "parallel-loops" = {
          depends = [ (hsPkgs.streamly) (hsPkgs.base) (hsPkgs.random) ];
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
        "nested" = {
          depends = [
            (hsPkgs.streamly)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.gauge)
            ];
          };
        };
      };
    }