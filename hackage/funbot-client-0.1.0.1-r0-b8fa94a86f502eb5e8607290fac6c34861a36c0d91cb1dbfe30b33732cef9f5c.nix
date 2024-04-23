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
    flags = { old = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "funbot-client"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "https://notabug.org/fr33domlover/funbot-client/";
      url = "";
      synopsis = "Report events to FunBot over a JSON/HTTP API.";
      description = "This is a library for reporting events to a running instance of\n<https://notabug.org/fr33domlover/funbot.git FunBot>, so that the bot can\nannounce the event to IRC. For example, if you are writing a paste server,\nyou can add support for IRC announcments of new pastes by reporting the paste\nto a running bot.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."funbot-ext-events" or (errorHandler.buildDepError "funbot-ext-events"))
        ] ++ (if flags.old
          then [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ]
          else [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ]);
        buildable = true;
      };
    };
  }