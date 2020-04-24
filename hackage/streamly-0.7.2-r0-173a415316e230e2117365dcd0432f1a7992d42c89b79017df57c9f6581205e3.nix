{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      fusion-plugin = false;
      inspection = false;
      debug = false;
      dev = false;
      has-llvm = false;
      no-fusion = false;
      streamk = false;
      examples = false;
      examples-sdl = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "streamly"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Harendra Kumar";
      maintainer = "streamly@composewell.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/composewell/streamly";
      url = "";
      synopsis = "Beautiful Streaming, Concurrent and Reactive Composition";
      description = "Streamly is a framework for writing programs in a high level, declarative\ndata flow programming paradigm. It provides a simple API, very close to\nstandard Haskell lists.  A program is expressed as a composition of data\nprocessing pipes, generally known as streams.  Streams can be generated,\nmerged, chained, mapped, zipped, and consumed concurrently – enabling a high\nlevel, declarative yet concurrent composition of programs.  Programs can be\nconcurrent or non-concurrent without any significant change.  Concurrency is\nauto scaled based on consumption rate.  Programmers do not have to be aware\nof threads, locking or synchronization to write scalable concurrent programs.\nStreamly provides C like performance, orders of magnitude better compared to\nexisting streaming libraries.\n\nStreamly is designed to express the full spectrum of programs with highest\nperformance. Do not think that if you are writing a small and simple program\nit may not be for you. It expresses a small \"hello world\" program with the\nsame efficiency, simplicity and elegance as a large scale concurrent\napplication. It unifies many different aspects of special purpose libraries\ninto a single yet simple framework.\n\nStreamly covers the functionality provided by Haskell lists as well as the\nfunctionality provided by streaming libraries like\n<https://hackage.haskell.org/package/streaming streaming>,\n<https://hackage.haskell.org/package/pipes pipes>, and\n<https://hackage.haskell.org/package/conduit conduit> with a simpler API and\nbetter performance. Streamly provides\nadvanced stream composition including various ways of appending, merging,\nzipping, splitting, grouping, distributing, partitioning and unzipping of\nstreams with true streaming and with concurrency. Streamly subsumes the\nfunctionality of list transformer libraries like @pipes@ or\n<https://hackage.haskell.org/package/list-t list-t> and also the logic\nprogramming library <https://hackage.haskell.org/package/logict logict>.\nThe grouping, splitting and windowing combinators in streamly can be compared\nto the window operators in <https://flink.apache.org/ Apache Flink>.\nHowever, compared to Flink streamly has a pure functional, succinct and\nexpressive API.\n\nThe concurrency capabilities of streamly are much more advanced and powerful\ncompared to the basic concurrency functionality provided by the\n<https://hackage.haskell.org/package/async async> package.  Streamly is a\nfirst class reactive programming library.  If you are familiar with\n<http://reactivex.io/ Reactive Extensions> you will find that it is very\nsimilar.  For most RxJs combinators you can find or write corresponding ones\nin streamly. Streamly can be used as an alternative to\n<https://hackage.haskell.org/package/Yampa Yampa> or\n<https://hackage.haskell.org/package/reflex reflex> as well.\n\nStreamly focuses on practical engineering with high performance. From well\nwritten streamly programs one can expect performance competitive to C.  High\nperformance streaming eliminates the need for string and text libraries like\n<https://hackage.haskell.org/package/bytestring bytestring>,\n<https://hackage.haskell.org/package/text text> and their lazy and strict\nflavors. The confusion and cognitive overhead arising from different\nstring types is eliminated. The two fundamental types in streamly are arrays\nfor storage and streams for processing. Strings and text are simply streams\nor arrays of 'Char' as they should be. Arrays in streamly have performance\nat par with the vector library.\n\nWhere to find more information:\n\n* /Quick Overview/: <#readme README file> in the package\n* /Building/: <src/docs/Build.md Build guide> for optimal performance\n* /Detailed Tutorial/: \"Streamly.Tutorial\" module in the haddock documentation\n* /Interoperation/: \"Streamly.Tutorial\" module for interop with other\nstreaming libraries\n* /Reference Documentation/: Haddock documentation for the respective modules\n* /Examples/: <src/examples examples directory> in the package\n* /Guides/: <src/docs docs directory> in the package, for documentation on\nadvanced topics, limitations, semantics of the library or on specific use\ncases.\n* <https://github.com/composewell/streaming-benchmarks Streaming Benchmarks>\n* <https://github.com/composewell/concurrency-benchmarks Concurrency Benchmarks>\n";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."heaps" or ((hsPkgs.pkgs-errors).buildDepError "heaps"))
          (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
          (hsPkgs."lockfree-queue" or ((hsPkgs.pkgs-errors).buildDepError "lockfree-queue"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."fusion-plugin-types" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin-types"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))) ++ (pkgs.lib).optionals (flags.inspection) [
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."inspection-testing" or ((hsPkgs.pkgs-errors).buildDepError "inspection-testing"))
          ]) ++ (pkgs.lib).optional (flags.dev && flags.inspection) (hsPkgs."inspection-and-dev-flags-cannot-be-used-together" or ((hsPkgs.pkgs-errors).buildDepError "inspection-and-dev-flags-cannot-be-used-together"));
        buildable = true;
        };
      exes = {
        "SearchQuery" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals ((flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)) ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core")));
          buildable = if (flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)
            then true
            else false;
          };
        "ListDir" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers")));
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
          };
        "MergeSort" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
          };
        "AcidRain" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8.0") [
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ]);
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
          };
        "CirclingSquare" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals (flags.examples-sdl) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            ];
          buildable = if flags.examples-sdl then true else false;
          };
        "ControlFlow" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals (flags.examples || flags.examples-sdl) ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups")));
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
          };
        "HandleIO" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
          };
        "FileIOExamples" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.examples || flags.examples-sdl
            then true
            else false;
          };
        "EchoServer" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals ((flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)) ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers")));
          buildable = if (flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)
            then true
            else false;
          };
        "FileSinkServer" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals ((flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)) ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers")));
          buildable = if (flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)
            then true
            else false;
          };
        "FromFileClient" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals ((flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if (flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)
            then true
            else false;
          };
        "WordClassifier" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals ((flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = if (flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)
            then true
            else false;
          };
        "WordCount" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals ((flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if (flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)
            then true
            else false;
          };
        "CamelCase" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals ((flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if (flags.examples || flags.examples-sdl) && !(compiler.isGhcjs && true)
            then true
            else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"));
          buildable = true;
          };
        "internal-prelude-test" = {
          depends = [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"));
          buildable = true;
          };
        "pure-streams-base" = {
          depends = [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"));
          buildable = true;
          };
        "pure-streams-streamly" = {
          depends = [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"));
          buildable = true;
          };
        "properties" = {
          depends = ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        "array-test" = {
          depends = ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        "internal-data-fold-test" = {
          depends = [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"));
          buildable = true;
          };
        "data-array-test" = {
          depends = ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        "smallarray-test" = {
          depends = ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        "primarray-test" = {
          depends = ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        "string-test" = {
          depends = ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        "maxrate" = {
          depends = (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin")) ++ (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = if flags.dev then true else false;
          };
        "loops" = {
          depends = [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"));
          buildable = true;
          };
        "nested-loops" = {
          depends = [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"));
          buildable = true;
          };
        "parallel-loops" = {
          depends = [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"));
          buildable = true;
          };
        "version-bounds" = {
          depends = [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhcjs && true) && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or ((hsPkgs.pkgs-errors).buildDepError "fusion-plugin"));
          buildable = true;
          };
        };
      };
    }