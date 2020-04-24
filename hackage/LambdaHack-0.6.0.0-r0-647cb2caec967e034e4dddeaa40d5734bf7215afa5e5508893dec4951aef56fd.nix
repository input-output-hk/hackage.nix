{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      vty = false;
      curses = false;
      gtk = false;
      sdl = false;
      with_expensive_assertions = false;
      release = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "LambdaHack"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski";
      homepage = "https://lambdahack.github.io";
      url = "";
      synopsis = "A game engine library for roguelike dungeon crawlers";
      description = "LambdaHack is a Haskell game engine library for roguelike games\nof arbitrary theme, size and complexity,\npackaged together with a little example dungeon crawler.\nTry out the browser version of the LambdaHack sample game at\n<https://lambdahack.github.io>\n(It runs fastest on Chrome. Keyboard commands and savefiles\nare supported only on recent enough versions of browsers.\nMouse should work everywhere.)\n\n<<https://raw.githubusercontent.com/LambdaHack/media/master/screenshot/crawl-0.6.0.0-8x8xb.png>>\n\nWhen completed, the engine will let you specify content\nto be procedurally generated, define the AI behaviour\non top of the generic content-independent rules\nand compile a ready-to-play game binary,\nusing either the supplied or a custom-made main loop.\nSeveral frontends are available (SDL2 is the default\nfor desktop and there is a Javascript browser frontend)\nand many other generic engine components are easily overridden,\nbut the fundamental source of flexibility lies\nin the strict and type-safe separation of code from the content\nand of clients (human and AI-controlled) from the server.\n\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term vision\nrevolves around procedural content generation and includes\nin-game content creation, auto-balancing and persistent\ncontent modification based on player behaviour.\nContributions are welcome.\n\nGames known to use the LambdaHack library:\n\n* Allure of the Stars, a near-future Sci-Fi game,\n<http://hackage.haskell.org/package/Allure>\n\n* Space Privateers, an adventure game set in far future,\n<http://hackage.haskell.org/package/SpacePrivateers>\n\nNote: All modules in this library are kept visible,\nto let games override and reuse them.\nOTOH, to reflect that some modules are implementation details\nrelative to others, the source code adheres to the following\nconvention. If a module has the same name as a directory,\nthe module is the exclusive interface to the directory.\nNo references to the modules in the directory are allowed\nexcept from the interface module. This policy is only binding\nwhen developing the library --- library users are free\nto access any modules, since the library authors are in\nno position to guess their particular needs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."assert-failure" or ((hsPkgs.pkgs-errors).buildDepError "assert-failure"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."enummapset-th" or ((hsPkgs.pkgs-errors).buildDepError "enummapset-th"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hsini" or ((hsPkgs.pkgs-errors).buildDepError "hsini"))
          (hsPkgs."keys" or ((hsPkgs.pkgs-errors).buildDepError "keys"))
          (hsPkgs."miniutter" or ((hsPkgs.pkgs-errors).buildDepError "miniutter"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-binary-instances" or ((hsPkgs.pkgs-errors).buildDepError "vector-binary-instances"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-dom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom"))
            ]
          else if flags.vty
            then [
              (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
              ]
            else if flags.curses
              then [
                (hsPkgs."hscurses" or ((hsPkgs.pkgs-errors).buildDepError "hscurses"))
                ]
              else if flags.gtk
                then [
                  (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
                  ]
                else [
                  (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
                  (hsPkgs."sdl2-ttf" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-ttf"))
                  ])) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"));
        buildable = true;
        };
      exes = {
        "LambdaHack" = {
          depends = [
            (hsPkgs."LambdaHack" or ((hsPkgs.pkgs-errors).buildDepError "LambdaHack"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."assert-failure" or ((hsPkgs.pkgs-errors).buildDepError "assert-failure"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."enummapset-th" or ((hsPkgs.pkgs-errors).buildDepError "enummapset-th"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."hsini" or ((hsPkgs.pkgs-errors).buildDepError "hsini"))
            (hsPkgs."keys" or ((hsPkgs.pkgs-errors).buildDepError "keys"))
            (hsPkgs."miniutter" or ((hsPkgs.pkgs-errors).buildDepError "miniutter"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-binary-instances" or ((hsPkgs.pkgs-errors).buildDepError "vector-binary-instances"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"));
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."LambdaHack" or ((hsPkgs.pkgs-errors).buildDepError "LambdaHack"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."assert-failure" or ((hsPkgs.pkgs-errors).buildDepError "assert-failure"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."enummapset-th" or ((hsPkgs.pkgs-errors).buildDepError "enummapset-th"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."hsini" or ((hsPkgs.pkgs-errors).buildDepError "hsini"))
            (hsPkgs."keys" or ((hsPkgs.pkgs-errors).buildDepError "keys"))
            (hsPkgs."miniutter" or ((hsPkgs.pkgs-errors).buildDepError "miniutter"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-binary-instances" or ((hsPkgs.pkgs-errors).buildDepError "vector-binary-instances"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"));
          buildable = true;
          };
        };
      };
    }