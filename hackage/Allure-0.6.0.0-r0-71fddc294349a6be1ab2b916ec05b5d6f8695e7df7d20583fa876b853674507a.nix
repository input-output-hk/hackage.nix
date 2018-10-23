{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Allure";
        version = "0.6.0.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "http://allureofthestars.com";
      url = "";
      synopsis = "Near-future Sci-Fi roguelike and tactical squad game";
      description = "Allure of the Stars\nis a near-future Sci-Fi roguelike and tactical squad game.\nTry out the browser version of Allure of the Stars at\n<http://allureofthestars.com/play>\n(It runs fastest on Chrome. Keyboard commands and savefiles\nare supported only on recent enough versions of browsers.\nMouse should work everywhere.)\n\n<<https://raw.githubusercontent.com/AllureOfTheStars/media/master/screenshot/crawl-0.6.0.0-8x8xb.png>>\n\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term goals\nare high replayability and auto-balancing through procedural\ncontent generation and persistent content modification\nbased on player behaviour. Contributions are welcome.\n\nThe game is written using the LambdaHack roguelike game engine\navailable at <http://hackage.haskell.org/package/LambdaHack>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Allure" = {
          depends  = [
            (hsPkgs.LambdaHack)
            (hsPkgs.template-haskell)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.enummapset-th)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.text)
          ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs.zlib);
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.LambdaHack)
            (hsPkgs.template-haskell)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.enummapset-th)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.text)
          ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs.zlib);
        };
      };
    };
  }