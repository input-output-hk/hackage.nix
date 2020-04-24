{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { database = false; webtools = false; renderercairo = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "L-seed"; version = "0.2"; };
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
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ] ++ (pkgs.lib).optionals (flags.renderercairo) [
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          ]) ++ (pkgs.lib).optionals (flags.database) [
          (hsPkgs."HDBC-odbc" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-odbc"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          ]) ++ (pkgs.lib).optional (flags.webtools) (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"));
        buildable = true;
        };
      exes = {
        "runGarden" = {
          buildable = if !flags.renderercairo then false else true;
          };
        "renderAsPNG" = {
          buildable = if !flags.renderercairo then false else true;
          };
        "validate" = { buildable = if !flags.webtools then false else true; };
        "fastScorer" = { buildable = true; };
        "dbclient" = {
          buildable = if !flags.database || !flags.renderercairo
            then false
            else true;
          };
        "dbscorer" = { buildable = if !flags.database then false else true; };
        };
      };
    }