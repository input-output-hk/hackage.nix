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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."lockfree-queue" or (buildDepError "lockfree-queue"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
        };
      exes = {
        "chart-linear" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bench-graph" or (buildDepError "bench-graph"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        "chart-nested" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bench-graph" or (buildDepError "bench-graph"))
            (hsPkgs."split" or (buildDepError "split"))
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
        "nested" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            ];
          };
        };
      };
    }