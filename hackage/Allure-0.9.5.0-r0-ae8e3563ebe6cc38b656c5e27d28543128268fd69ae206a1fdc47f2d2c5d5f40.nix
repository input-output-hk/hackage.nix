{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { supportnodejs = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "Allure"; version = "0.9.5.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "http://allureofthestars.com";
      url = "";
      synopsis = "Near-future Sci-Fi roguelike and tactical squad combat game";
      description = "Allure of the Stars is a near-future Sci-Fi roguelike\nand tactical squad combat game. Binaries and the game manual\nare available at the homepage, where you can also\ntry the game out in the browser:\n<http://allureofthestars.com/play>.\n(It runs fastest on Chrome. Keyboard commands and savefiles\nare supported only on recent enough versions of browsers.\nMouse should work everywhere.)\n\nNot a single picture in this game. You have to imagine everything\nyourself, like with a book (a grown-up book, without pictures).\nOnce you learn to imagine things, though, you can keep exploring\nand mastering the world and making up stories for a long time.\n\nThe game is written in Haskell using the LambdaHack roguelike\ngame engine <http://hackage.haskell.org/package/LambdaHack>.\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term goals\nare high replayability and auto-balancing through procedural\ncontent generation and persistent content modification\nbased on player behaviour. Contributions are welcome.\n\nThis is a workaround .cabal file, flattened to eliminated\ninternal libraries until generating haddocks for them\nis fixed. The original .cabal file is stored in the github repo.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."LambdaHack" or ((hsPkgs.pkgs-errors).buildDepError "LambdaHack"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."enummapset" or ((hsPkgs.pkgs-errors).buildDepError "enummapset"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc-compact" or ((hsPkgs.pkgs-errors).buildDepError "ghc-compact"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "Allure" = {
          depends = [
            (hsPkgs."LambdaHack" or ((hsPkgs.pkgs-errors).buildDepError "LambdaHack"))
            (hsPkgs."Allure" or ((hsPkgs.pkgs-errors).buildDepError "Allure"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."LambdaHack" or ((hsPkgs.pkgs-errors).buildDepError "LambdaHack"))
            (hsPkgs."Allure" or ((hsPkgs.pkgs-errors).buildDepError "Allure"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }