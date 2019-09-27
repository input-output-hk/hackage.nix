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
      extra-benchmarks = false;
      examples = false;
      examples-sdl = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "streamly"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "http://github.com/harendra-kumar/streamly";
      url = "";
      synopsis = "Beautiful Streaming, Concurrent and Reactive Composition";
      description = "Streamly is a monad transformer unifying non-determinism\n(<https://hackage.haskell.org/package/list-t list-t>\\/<https://hackage.haskell.org/package/logict logict>),\nconcurrency (<https://hackage.haskell.org/package/async async>),\nstreaming (<https://hackage.haskell.org/package/conduit conduit>\\/<https://hackage.haskell.org/package/pipes pipes>),\nand FRP (<https://hackage.haskell.org/package/Yampa Yampa>\\/<https://hackage.haskell.org/package/reflex reflex>)\nfunctionality in a concise and intuitive API.\nHigh level concurrency makes concurrent applications almost indistinguishable\nfrom non-concurrent ones.  By changing a single combinator you can control\nwhether the code runs serially or concurrently.  It naturally integrates\nconcurrency with streaming rather than adding it as an afterthought.\nMoreover, it interworks with the popular streaming libraries.\n\nSee the README for an overview and the haddock documentation for full\nreference.  It is recommended to read the comprehensive tutorial module\n\"Streamly.Tutorial\" first. Also see \"Streamly.Examples\" for some working\nexamples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
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
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optionals (flags.examples || flags.examples-sdl) [
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."path-io" or (buildDepError "path-io"))
          (hsPkgs."random" or (buildDepError "random"))
          ]) ++ (pkgs.lib).optional (flags.examples-sdl) (hsPkgs."SDL" or (buildDepError "SDL"));
        buildable = true;
        };
      exes = {
        "loops" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.examples then true else false;
          };
        "nested-loops" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = if flags.examples then true else false;
          };
        "parallel-loops" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or (buildDepError "transformers"));
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = ([
            (hsPkgs."streamly" or (buildDepError "streamly"))
            (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or (buildDepError "transformers"))) ++ (pkgs.lib).optionals (flags.extra-benchmarks) [
            (hsPkgs."list-t" or (buildDepError "list-t"))
            (hsPkgs."logict" or (buildDepError "logict"))
            (hsPkgs."machines" or (buildDepError "machines"))
            (hsPkgs."simple-conduit" or (buildDepError "simple-conduit"))
            (hsPkgs."transient" or (buildDepError "transient"))
            ];
          buildable = true;
          };
        };
      };
    }