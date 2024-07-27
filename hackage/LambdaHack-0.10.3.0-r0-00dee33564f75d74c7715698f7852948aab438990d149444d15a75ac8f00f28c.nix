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
      with_expensive_assertions = false;
      release = true;
      supportnodejs = true;
      jsaddle = false;
    };
    package = {
      specVersion = "2.4";
      identifier = { name = "LambdaHack"; version = "0.10.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "https://lambdahack.github.io";
      url = "";
      synopsis = "A game engine library for tactical squad ASCII roguelike dungeon crawlers";
      description = "LambdaHack is a Haskell game engine library for ASCII roguelike\ngames of arbitrary theme, size and complexity, with optional\ntactical squad combat. It's packaged together with a sample\ndungeon crawler in a quirky fantasy setting. The sample game can be\ntried out in the browser at <http://lambdahack.github.io>.\n\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term goals\ninclude multiplayer tactical squad combat, in-game content\ncreation, auto-balancing and persistent content modification\nbased on player behaviour. Contributions are welcome.\n\nOther games known to use the LambdaHack library:\n\n* Allure of the Stars, a near-future Sci-Fi game,\n<http://hackage.haskell.org/package/Allure>\n\nNote: All modules in this library are kept visible,\nto let games override and reuse them.\nOTOH, to reflect that some modules are implementation details\nrelative to others, the source code adheres to the following\nconvention. If a module has the same name as a directory,\nthe module is the exclusive interface to the directory.\nNo references to the modules in the directory are allowed\nexcept from the interface module. This policy is only binding\nwhen developing the library --- library users are free\nto access any modules, since the library authors are in\nno position to guess their particular needs.\n\nThis is a workaround .cabal file, flattened to eliminate\ninternal libraries until generating haddocks for them\nis fixed. The original .cabal file is stored in the github repo.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."assert-failure" or (errorHandler.buildDepError "assert-failure"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hsini" or (errorHandler.buildDepError "hsini"))
          (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
          (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
          (hsPkgs."miniutter" or (errorHandler.buildDepError "miniutter"))
          (hsPkgs."open-browser" or (errorHandler.buildDepError "open-browser"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-binary-instances" or (errorHandler.buildDepError "vector-binary-instances"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          (hsPkgs."ghc-compact" or (errorHandler.buildDepError "ghc-compact"))
        ] ++ (if compiler.isGhcjs && true || flags.jsaddle
          then [
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
          ]
          else [
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          ])) ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
          ]
          else [ (hsPkgs."zlib" or (errorHandler.buildDepError "zlib")) ]);
        buildable = true;
      };
      exes = {
        "LambdaHack" = {
          depends = [
            (hsPkgs."LambdaHack" or (errorHandler.buildDepError "LambdaHack"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."LambdaHack" or (errorHandler.buildDepError "LambdaHack"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.doctest-driver-gen.components.exes.doctest-driver-gen or (pkgs.pkgsBuildBuild.doctest-driver-gen or (errorHandler.buildToolDepError "doctest-driver-gen:doctest-driver-gen")))
          ];
          buildable = true;
        };
      };
    };
  }