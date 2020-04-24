{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { curses = false; vty = false; std = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Allure"; version = "0.4.2"; };
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
          depends = [
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            ] ++ (if flags.curses
            then [
              (hsPkgs."hscurses" or ((hsPkgs.pkgs-errors).buildDepError "hscurses"))
              ]
            else if flags.vty
              then [
                (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
                ]
              else (pkgs.lib).optional (!flags.std) (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk")));
          libs = (pkgs.lib).optional (flags.curses) (pkgs."curses" or ((hsPkgs.pkgs-errors).sysDepError "curses"));
          buildable = true;
          };
        "BotAllure" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }