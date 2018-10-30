{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      vty = false;
      curses = false;
      gtk = false;
      sdl = false;
      jsaddle = false;
      with_expensive_assertions = false;
      release = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "LambdaHack";
        version = "0.7.0.0";
      };
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
        depends  = ([
          (hsPkgs.assert-failure)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.enummapset-th)
          (hsPkgs.filepath)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.hsini)
          (hsPkgs.keys)
          (hsPkgs.miniutter)
          (hsPkgs.optparse-applicative)
          (hsPkgs.pretty-show)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
        ] ++ (if compiler.isGhcjs && true || flags.jsaddle
          then [ (hsPkgs.ghcjs-dom) ]
          else if flags.vty
            then [ (hsPkgs.vty) ]
            else if flags.curses
              then [ (hsPkgs.hscurses) ]
              else if flags.gtk
                then [ (hsPkgs.gtk3) ]
                else [
                  (hsPkgs.sdl2)
                  (hsPkgs.sdl2-ttf)
                ])) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs.zlib);
      };
      exes = {
        "LambdaHack" = {
          depends  = [
            (hsPkgs.LambdaHack)
            (hsPkgs.template-haskell)
            (hsPkgs.assert-failure)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.enummapset-th)
            (hsPkgs.filepath)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.hsini)
            (hsPkgs.keys)
            (hsPkgs.miniutter)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-show)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vector-binary-instances)
          ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs.zlib);
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.LambdaHack)
            (hsPkgs.template-haskell)
            (hsPkgs.assert-failure)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.enummapset-th)
            (hsPkgs.filepath)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.hsini)
            (hsPkgs.keys)
            (hsPkgs.miniutter)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-show)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vector-binary-instances)
          ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs.zlib);
        };
      };
    };
  }