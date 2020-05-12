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
      specVersion = "1.9.2";
      identifier = { name = "hsc3-server"; version = "0.7.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten 2008-2013";
      maintainer = "kaoskorobase@gmail.com";
      author = "Stefan Kersten";
      homepage = "https://github.com/kaoskorobase/hsc3-server";
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
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."hsc3-process" or (errorHandler.buildDepError "hsc3-process"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."ListZipper" or (errorHandler.buildDepError "ListZipper"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      exes = {
        "hsc3-hello" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-server" or (errorHandler.buildDepError "hsc3-server"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        "hsc3-sine-grains" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-server" or (errorHandler.buildDepError "hsc3-server"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        };
      tests = {
        "hsc3-server-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
            (hsPkgs."hsc3-server" or (errorHandler.buildDepError "hsc3-server"))
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