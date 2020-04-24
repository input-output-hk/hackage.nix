{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      dev = false;
      extra-benchmarks = false;
      examples = false;
      examples-sdl = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "streamly"; version = "0.1.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."lockfree-queue" or ((hsPkgs.pkgs-errors).buildDepError "lockfree-queue"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))) ++ (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."path-io" or ((hsPkgs.pkgs-errors).buildDepError "path-io"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ]) ++ (pkgs.lib).optional (flags.examples-sdl) (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"));
        buildable = true;
        };
      exes = {
        "loops" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "nested-loops" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = if flags.examples then true else false;
          };
        "parallel-loops" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = ([
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))) ++ (pkgs.lib).optionals (flags.extra-benchmarks) [
            (hsPkgs."list-t" or ((hsPkgs.pkgs-errors).buildDepError "list-t"))
            (hsPkgs."logict" or ((hsPkgs.pkgs-errors).buildDepError "logict"))
            (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
            (hsPkgs."simple-conduit" or ((hsPkgs.pkgs-errors).buildDepError "simple-conduit"))
            (hsPkgs."transient" or ((hsPkgs.pkgs-errors).buildDepError "transient"))
            ];
          buildable = true;
          };
        };
      };
    }