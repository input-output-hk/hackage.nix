{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      curses = false;
      vty = false;
      std = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Allure";
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "http://github.com/Mikolaj/Allure";
      url = "";
      synopsis = "Near-future roguelike game in early development";
      description = "This is an alpha pre-release of Allure of the Stars,\na near-future Sci-Fi roguelike and tactical squad game.\nLong term goals are high replayability and auto-balancing\nthrough procedural content generation and persistent content\nmodification based on player behaviour.\n\nThe game is based (for the time being, as a fork)\non the LambdaHack roguelike game engine available\nat <http://hackage.haskell.org/package/Allure>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Allure" = {
          depends  = [
            (hsPkgs.ConfigFile)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            (hsPkgs.zlib)
          ] ++ (if flags.curses
            then [ (hsPkgs.hscurses) ]
            else if flags.vty
              then [ (hsPkgs.vty) ]
              else pkgs.lib.optional (!flags.std) (hsPkgs.gtk));
          libs = pkgs.lib.optional (flags.curses) (pkgs."curses");
        };
        "BotAllure" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
          ];
        };
      };
    };
  }