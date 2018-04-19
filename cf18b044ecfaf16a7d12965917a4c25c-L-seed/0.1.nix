{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      database = false;
      webtools = false;
      renderercairo = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "L-seed";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
        author = "Joachim Breitner <mail@joachim-breitner.de>";
        homepage = "http://www.entropia.de/wiki/L-seed";
        url = "";
        synopsis = "Plant growing programming game";
        description = "The players of this game will write code (the „genome“) that describes\nhow plants (the biological type, not the industrial) will grow. The\nplants will grow simultaneously on the screen (the „garden“), will\ncompete for light and will multiply. The players can not change the\ncode of a growing plant, but they do have the chance to update their\ncode for the next generation -- when a plant drops a seed, it will run\nthe newest code. All in all, the game aims to be slowly paced and\nrelaxing, something to just watch for a while and something that does\nnot need constant attention by the players.\n\nThis package contains the haskell programs, i.e. the game simulation\nwith the visual display. It can be used to locally test the plants.";
        buildType = "Simple";
      };
      components = {
        L-seed = {
          depends  = (([
            hsPkgs.base
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.old-time
            hsPkgs.mtl
            hsPkgs.parsec
          ] ++ pkgs.lib.optionals _flags.renderercairo [
            hsPkgs.cairo
            hsPkgs.gtk
          ]) ++ pkgs.lib.optionals _flags.database [
            hsPkgs.HDBC-odbc
            hsPkgs.HDBC
          ]) ++ pkgs.lib.optional _flags.webtools hsPkgs.json;
        };
        exes = {
          runGarden = {};
          validate = {};
          fastScorer = {};
          dbclient = {};
          dbscorer = {};
        };
      };
    }