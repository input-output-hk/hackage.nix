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
      dev = false;
      extra-benchmarks = false;
      examples = false;
      examples-sdl = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "streamly"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/composewell/streamly";
      url = "";
      synopsis = "Beautiful Streaming, Concurrent and Reactive Composition";
      description = "Streamly is a monad transformer unifying non-determinism\n(<https://hackage.haskell.org/package/list-t list-t>\\/<https://hackage.haskell.org/package/logict logict>),\nconcurrency (<https://hackage.haskell.org/package/async async>),\nstreaming (<https://hackage.haskell.org/package/conduit conduit>\\/<https://hackage.haskell.org/package/pipes pipes>),\nand FRP (<https://hackage.haskell.org/package/Yampa Yampa>\\/<https://hackage.haskell.org/package/reflex reflex>)\nfunctionality in a concise and intuitive API.\nHigh level concurrency makes concurrent applications almost indistinguishable\nfrom non-concurrent ones.  By changing a single combinator you can control\nwhether the code runs serially or concurrently.  It naturally integrates\nconcurrency with streaming rather than adding it as an afterthought.\nMoreover, it interworks with the popular streaming libraries.\n\nSee the README for an overview and the haddock documentation for full\nreference.  It is recommended to read the comprehensive tutorial module\n\"Streamly.Tutorial\" first. Also see \"Streamly.Examples\" for some working\nexamples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
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
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ]) ++ (pkgs.lib).optional (flags.examples-sdl) (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"));
        buildable = true;
        };
      exes = {
        "loops" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "nested-loops" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if flags.examples then true else false;
          };
        "parallel-loops" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = ([
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ (pkgs.lib).optionals (flags.extra-benchmarks) [
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."simple-conduit" or (errorHandler.buildDepError "simple-conduit"))
            (hsPkgs."transient" or (errorHandler.buildDepError "transient"))
            ];
          buildable = true;
          };
        };
      };
    }