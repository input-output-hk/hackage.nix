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
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "LambdaHack";
        version = "0.2.12";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski";
      homepage = "http://github.com/kosmikus/LambdaHack";
      url = "";
      synopsis = "A roguelike game engine in early and active development";
      description = "This is an alpha release of LambdaHack,\na game engine library for roguelike games\nof arbitrary theme, size and complexity,\npackaged together with a small example dungeon crawler.\nWhen completed, the engine will let you specify content\nto be procedurally generated, define the AI behaviour\non top of the generic content-independent rules\nand compile a ready-to-play game binary, using either\nthe supplied or a custom-made main loop.\nSeveral frontends are available (GTK is the default)\nand many other generic engine components are easily overridden,\nbut the fundamental source of flexibility lies\nin the strict and type-safe separation of code and content\nand of clients (human and AI-controlled) and server.\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term vision\nrevolves around procedural content generation and includes\nin-game content creation, auto-balancing and persistent\ncontent modification based on player behaviour.\n\nA larger game that depends on the LambdaHack library\nis Allure of the Stars, available from\n<http://hackage.haskell.org/package/Allure>.\n\nNote: All modules in this library are kept visible,\nto let games override and reuse them.\nOTOH, to reflect that some modules are implementation details\nrelative to others, the source code adheres to the following\nconvention. If a module has the same name as a directory,\nthe module is the exclusive interface to the directory.\nNo references to the modules in the directory are allowed\nexcept from the interface module. This policy is only binding\ninside the library --- users are free to do whatever they\nplease, since the library authors are in no position to guess\ntheir particular needs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.assert-failure)
          (hsPkgs.base)
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
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.pretty-show)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.zlib)
        ] ++ (if flags.curses
          then [ (hsPkgs.hscurses) ]
          else if flags.vty
            then [ (hsPkgs.vty) ]
            else [ (hsPkgs.gtk) ]);
      };
      exes = {
        "LambdaHack" = {
          depends  = [
            (hsPkgs.LambdaHack)
            (hsPkgs.template-haskell)
            (hsPkgs.array)
            (hsPkgs.assert-failure)
            (hsPkgs.base)
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
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.pretty-show)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vector-binary-instances)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }