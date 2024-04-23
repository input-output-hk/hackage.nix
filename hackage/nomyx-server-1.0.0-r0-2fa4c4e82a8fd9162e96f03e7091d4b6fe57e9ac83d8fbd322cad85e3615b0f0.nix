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
      specVersion = "1.8";
      identifier = { name = "nomyx-server"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "A Nomic game in haskell";
      description = "A Nomic game in Haskell, with a dedicated language to create new rules.\n\nNomyx is a fabulous and strange game where you have the right to change the rules in the middle of the game!\nIndeed, changing the rules is the goal of the game. Changing a rule is considered as a move. Of course even that could be changed!";
      buildType = "Simple";
    };
    components = {
      exes = {
        "nomyx-server" = {
          depends = [
            (hsPkgs."nomyx-core" or (errorHandler.buildDepError "nomyx-core"))
            (hsPkgs."nomyx-language" or (errorHandler.buildDepError "nomyx-language"))
            (hsPkgs."nomyx-web" or (errorHandler.buildDepError "nomyx-web"))
            (hsPkgs."nomyx-library" or (errorHandler.buildDepError "nomyx-library"))
            (hsPkgs."nomyx-api" or (errorHandler.buildDepError "nomyx-api"))
            (hsPkgs."imprevu" or (errorHandler.buildDepError "imprevu"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nomyx-server" or (errorHandler.buildDepError "nomyx-server"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
          buildable = true;
        };
      };
    };
  }