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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "funbot-git-hook"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "https://notabug.org/fr33domlover/funbot-git-hook/";
      url = "";
      synopsis = "Git hook which sends events to FunBot.";
      description = "This is program to use as a Git post-receive hook, which collects new commits\nand tags made in the Git push, and reports them to a running instance of\n<https://notabug.org/fr33domlover/funbot FunBot>, so that the bot can\nannounce the event to IRC.\n\nSee the /README.md/ for instructions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "funbot-client-post-receive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hit" or (errorHandler.buildDepError "hit"))
            (hsPkgs."funbot-client" or (errorHandler.buildDepError "funbot-client"))
            (hsPkgs."funbot-ext-events" or (errorHandler.buildDepError "funbot-ext-events"))
            (hsPkgs."template" or (errorHandler.buildDepError "template"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
          buildable = true;
        };
      };
    };
  }