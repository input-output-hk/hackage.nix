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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsc3-server"; version = "0.4.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten 2008-2012";
      maintainer = "Stefan Kersten";
      author = "Stefan Kersten";
      homepage = "http://space.k-hornz.de/software/hsc3-server";
      url = "";
      synopsis = "SuperCollider server resource management and synchronization.";
      description = "This library provides abstractions for managing SuperCollider server\nresources like node, buffer and bus ids and synchronization primitives.\n\nChangeLog: <https://github.com/kaoskorobase/hsc3-server/blob/master/ChangeLog.md>\n\nExamples: <https://github.com/kaoskorobase/hsc3-server/tree/master/examples>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bitset" or (errorHandler.buildDepError "bitset"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."hsc3-process" or (errorHandler.buildDepError "hsc3-process"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."strict-concurrency" or (errorHandler.buildDepError "strict-concurrency"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      exes = {
        "hsc3-hello" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitset" or (errorHandler.buildDepError "bitset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-process" or (errorHandler.buildDepError "hsc3-process"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."strict-concurrency" or (errorHandler.buildDepError "strict-concurrency"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        "hsc3-sine-grains" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitset" or (errorHandler.buildDepError "bitset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-process" or (errorHandler.buildDepError "hsc3-process"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."strict-concurrency" or (errorHandler.buildDepError "strict-concurrency"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        };
      tests = {
        "hsc3-server-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitset" or (errorHandler.buildDepError "bitset"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }