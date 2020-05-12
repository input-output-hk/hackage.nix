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
      identifier = { name = "funbot"; version = "0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "The Freepost community, see AUTHORS file";
      homepage = "https://notabug.org/fr33domlover/funbot/";
      url = "";
      synopsis = "IRC bot for fun, learning, creativity and collaboration.";
      description = "One day an idea came up on the #freepost IRC channel: We didn't need much of\nthe serious features IRC bots provide, but we could develop an IRC bot\ncollaboratively, for fun and for learning new skills and languages! I also\nthought this is a great chance for people to quickly see their code in real\nuse, which is motivating when learning programming, and it's a chance to\nintroduce Haskell to the community.\n\nWhile the bot is made for and by the <https://freepo.st Freepost> community,\nit is fully intended for use any anyone else! For experienced Haskell\ndevelopers, this bot can perhaps provide space for creativity and custom\nadvanced plugins and features.\n\nSince this bot is meant for collaborative development while really running\nit, the running instance in @#freepost@ is built from the git repository.\nOccasionally releases will be made to Hackage. If you want to be sure you\nhave all the latest features, check out the git repository (and/or ask us to\nmake a release if you think it's been long enough).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "funbot" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."feed-collect" or (errorHandler.buildDepError "feed-collect"))
            (hsPkgs."funbot-ext-events" or (errorHandler.buildDepError "funbot-ext-events"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-listen" or (errorHandler.buildDepError "http-listen"))
            (hsPkgs."irc-fun-bot" or (errorHandler.buildDepError "irc-fun-bot"))
            (hsPkgs."irc-fun-color" or (errorHandler.buildDepError "irc-fun-color"))
            (hsPkgs."json-state" or (errorHandler.buildDepError "json-state"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."settings" or (errorHandler.buildDepError "settings"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."time-interval" or (errorHandler.buildDepError "time-interval"))
            (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."vcs-web-hook-parse" or (errorHandler.buildDepError "vcs-web-hook-parse"))
            ];
          buildable = true;
          };
        };
      };
    }