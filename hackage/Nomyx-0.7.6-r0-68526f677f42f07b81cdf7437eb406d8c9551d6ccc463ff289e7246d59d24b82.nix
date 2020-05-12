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
      specVersion = "1.6";
      identifier = { name = "Nomyx"; version = "0.7.6"; };
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
        "Nomyx" = {
          depends = [
            (hsPkgs."Nomyx-Core" or (errorHandler.buildDepError "Nomyx-Core"))
            (hsPkgs."Nomyx-Language" or (errorHandler.buildDepError "Nomyx-Language"))
            (hsPkgs."Nomyx-Web" or (errorHandler.buildDepError "Nomyx-Web"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hint-server" or (errorHandler.buildDepError "hint-server"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }