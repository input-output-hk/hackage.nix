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
      specVersion = "2.4";
      identifier = { name = "proof-assistant-bot"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "persiantiger@yandex.ru";
      author = "Andrey Prokopenko";
      homepage = "https://github.com/swamp-agr/proof-assistant-bot/";
      url = "";
      synopsis = "Telegram bot for proof assistants";
      description = "Bridge between Telegram Bot and several proof assistants.\n\nCurrently following proof assistant supported: Agda, Arend, Coq, Idris 2, Lean, Rzk\n\nSee README.md for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."rzk" or (errorHandler.buildDepError "rzk"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."telegram-bot-simple" or (errorHandler.buildDepError "telegram-bot-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."Agda" or (errorHandler.buildDepError "Agda"))
          ];
        buildable = true;
        };
      exes = {
        "proof-assistant-bot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."proof-assistant-bot" or (errorHandler.buildDepError "proof-assistant-bot"))
            ];
          buildable = true;
          };
        };
      };
    }