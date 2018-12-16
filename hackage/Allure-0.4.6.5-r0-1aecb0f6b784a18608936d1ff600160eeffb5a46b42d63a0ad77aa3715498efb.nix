{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Allure";
        version = "0.4.6.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "http://github.com/Mikolaj/Allure";
      url = "";
      synopsis = "Near-future roguelike game in very early and active development";
      description = "This is an alpha release of Allure of the Stars,\na near-future Sci-Fi roguelike and tactical squad game.\nThe game is barely fun at this stage and not yet\nreally Sci-Fi. See the wiki for design notes and contribute.\n\nNew since 0.4.4 are the Main Menu and improved squad combat.\nIf you use GHC 7.6.1 and gtk2hs compiles for you,\nplease install the LambdaHack library manually,\nwith 'cabal install LambdaHack -fgtk --reinstall'.\n\nLong term goals are high replayability and auto-balancing\nthrough procedural content generation and persistent content\nmodification based on player behaviour.\n\nThe game is written using the LambdaHack roguelike game engine\navailable at <http://hackage.haskell.org/package/LambdaHack>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Allure" = {
          depends = [
            (hsPkgs.LambdaHack)
            (hsPkgs.template-haskell)
            (hsPkgs.ConfigFile)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.miniutter)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }