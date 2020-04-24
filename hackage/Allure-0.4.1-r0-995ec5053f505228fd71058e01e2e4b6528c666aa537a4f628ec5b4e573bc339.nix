{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { curses = false; vty = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Allure"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "http://github.com/Mikolaj/Allure";
      url = "";
      synopsis = "Near-future roguelike game in early development";
      description = "This is an alpha prerelease of Allure of the Stars,\na near-future Sci-Fi roguelike and tactical squad game.\nLong term goals are high replayability and auto-balancing\nthrough procedural content generation and persistent content\nmodification based on player behaviour.\nThe game is based on the LambdaHack roguelike game engine,";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Allure" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ] ++ (if flags.curses
            then [
              (hsPkgs."hscurses" or ((hsPkgs.pkgs-errors).buildDepError "hscurses"))
              ]
            else if flags.vty
              then [
                (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
                ]
              else [
                (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
                ]);
          libs = (pkgs.lib).optional (flags.curses) (pkgs."curses" or ((hsPkgs.pkgs-errors).sysDepError "curses"));
          buildable = true;
          };
        };
      };
    }