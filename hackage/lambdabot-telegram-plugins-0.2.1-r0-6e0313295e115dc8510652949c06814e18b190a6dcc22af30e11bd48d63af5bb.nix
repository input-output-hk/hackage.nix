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
      identifier = { name = "lambdabot-telegram-plugins"; version = "0.2.1"; };
      license = "GPL-2.0-or-later";
      copyright = "";
      maintainer = "persiantiger@yandex.ru";
      author = "Andrey Prokopenko";
      homepage = "https://github.com/swamp-agr/lambdabot-telegram-plugins#readme";
      url = "";
      synopsis = "Lambdabot for Telegram";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nIt operates as a command line tool, embedded in an editor,\nembedded in GHCi, via internet relay chat and on the web.\n\nTelegram bot provided via telegram-bot-simple package.\n\nThis package is a combination of both Lambdabot and Telegram bot.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."haskell-src-exts-simple" or (errorHandler.buildDepError "haskell-src-exts-simple"))
          (hsPkgs."telegram-bot-simple" or (errorHandler.buildDepError "telegram-bot-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."lambdabot-core" or (errorHandler.buildDepError "lambdabot-core"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = {
        "telegram-lambdabot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdabot-core" or (errorHandler.buildDepError "lambdabot-core"))
            (hsPkgs."lambdabot-haskell-plugins" or (errorHandler.buildDepError "lambdabot-haskell-plugins"))
            (hsPkgs."lambdabot-telegram-plugins" or (errorHandler.buildDepError "lambdabot-telegram-plugins"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }