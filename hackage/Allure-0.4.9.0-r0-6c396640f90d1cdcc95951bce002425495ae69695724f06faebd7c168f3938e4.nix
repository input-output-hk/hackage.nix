{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Allure"; version = "0.4.9.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "http://allureofthestars.com";
      url = "";
      synopsis = "Near-future Sci-Fi roguelike and tactical squad game";
      description = "Allure of the Stars\nis a near-future Sci-Fi roguelike and tactical squad game.\nSee the wiki for design notes and contribute.\n\n<<https://raw.githubusercontent.com/AllureOfTheStars/media/master/screenshot/safari1.png>>\n\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term goals\nare high replayability and auto-balancing through procedural\ncontent generation and persistent content modification\nbased on player behaviour.\n\nThe game is written using the LambdaHack roguelike game engine\navailable at <http://hackage.haskell.org/package/LambdaHack>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Allure" = {
          depends = [
            (hsPkgs."LambdaHack" or (errorHandler.buildDepError "LambdaHack"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."enummapset-th" or (errorHandler.buildDepError "enummapset-th"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."LambdaHack" or (errorHandler.buildDepError "LambdaHack"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."enummapset-th" or (errorHandler.buildDepError "enummapset-th"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }