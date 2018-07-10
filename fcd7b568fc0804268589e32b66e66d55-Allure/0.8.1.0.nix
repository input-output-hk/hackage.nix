{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Allure";
          version = "0.8.1.0";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
        author = "Andres Loeh, Mikolaj Konarski and others";
        homepage = "http://allureofthestars.com";
        url = "";
        synopsis = "Near-future Sci-Fi roguelike and tactical squad game";
        description = "Allure of the Stars is a near-future Sci-Fi roguelike\nand tactical squad game. Binaries and the game manual\nare available at the homepage, where you can also\ntry the game out in the browser:\n<http://allureofthestars.com/play>\n(It runs fastest on Chrome. Keyboard commands and savefiles\nare supported only on recent enough versions of browsers.\nMouse should work everywhere.)\n\nNot a single picture in this game. You have to imagine everything\nyourself, like with a book (a grown-up book, without pictures).\nOnce you learn to imagine things, though, you can keep exploring\nand mastering the world and making up stories for a long time.\n\nThe game is written in Haskell using the LambdaHack roguelike\ngame engine <http://hackage.haskell.org/package/LambdaHack>.\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term goals\nare high replayability and auto-balancing through procedural\ncontent generation and persistent content modification\nbased on player behaviour. Contributions are welcome.";
        buildType = "Simple";
      };
      components = {
        exes = {
          Allure = {
            depends  = [
              hsPkgs.LambdaHack
              hsPkgs.template-haskell
              hsPkgs.async
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.enummapset
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.random
              hsPkgs.text
              hsPkgs.transformers
            ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) hsPkgs.zlib;
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.LambdaHack
              hsPkgs.template-haskell
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.enummapset
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.random
              hsPkgs.text
              hsPkgs.transformers
            ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) hsPkgs.zlib;
          };
        };
      };
    }