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
    flags = { curses = false; vty = false; std = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "LambdaHack"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski";
      homepage = "http://github.com/kosmikus/LambdaHack";
      url = "";
      synopsis = "A roguelike game engine in early and very active development";
      description = "This is an alpha release of LambdaHack,\na game engine library for roguelike games\nof arbitrary theme, size and complexity,\npackaged together with a small example dungeon crawler.\nWhen completed, it will let you specify content\nto be procedurally generated, define the AI behaviour\non top of the generic content-independent rules\nand compile a ready-to-play game binary, using either\nthe supplied or a custom-made main loop.\nSeveral frontends are available (GTK is the default)\nand many other generic engine components are easily overridden,\nbut the fundamental source of flexibility lies\nin the strict and type-safe separation of code and content.\n\nNew in this release are missiles flying for three turns\n(by an old kosmikus' idea), visual feedback for targeting\nand animations of combat and individual monster moves.\nUpcoming new features: improved squad combat, player action\nundo/redo, completely redesigned UI. Long term goals\nare focused around procedural content generation and include\nin-game content creation, auto-balancing, persistent\ncontent modification based on player behaviour\nand the improvement of the AI monad EDSL, so that rules\nfor synthesising monster behaviour from game content\nare extensible, readable and easy to debug.\n\nA larger game that depends on the LambdaHack library\nis Allure of the Stars, available from\n<http://hackage.haskell.org/package/Allure>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (if flags.curses
          then [
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
            ]
          else if flags.vty
            then [ (hsPkgs."vty" or (errorHandler.buildDepError "vty")) ]
            else (pkgs.lib).optional (!flags.std) (hsPkgs."gtk" or (errorHandler.buildDepError "gtk")));
        buildable = true;
        };
      exes = {
        "LambdaHack" = {
          depends = [
            (hsPkgs."LambdaHack" or (errorHandler.buildDepError "LambdaHack"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            ];
          buildable = true;
          };
        "DumbBot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }