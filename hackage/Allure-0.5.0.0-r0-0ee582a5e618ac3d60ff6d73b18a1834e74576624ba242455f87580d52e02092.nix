{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { release = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Allure";
        version = "0.5.0.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "http://allureofthestars.com";
      url = "";
      synopsis = "Near-future Sci-Fi roguelike and tactical squad game";
      description = "Allure of the Stars\nis a near-future Sci-Fi roguelike and tactical squad game.\nSee the wiki for design notes and contribute.\n\n<<https://raw.githubusercontent.com/AllureOfTheStars/media/master/screenshot/campaign2.png>>\n\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term goals\nare high replayability and auto-balancing through procedural\ncontent generation and persistent content modification\nbased on player behaviour.\n\nThe game is written using the LambdaHack roguelike game engine\navailable at <http://hackage.haskell.org/package/LambdaHack>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Allure" = {
          depends  = [
            (hsPkgs.LambdaHack)
            (hsPkgs.template-haskell)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.enummapset-th)
            (hsPkgs.filepath)
            (hsPkgs.text)
          ];
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
            (hsPkgs.text)
          ];
        };
      };
    };
  }