{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "This is a library for reporting events to a running instance of\n<https://notabug.org/fr33domlover/funbot FunBot>, so that the bot can\nannounce the event to IRC. For example, if you are writing a paste server,\nyou can add support for IRC announcments of new pastes by reporting the paste\nto a running bot.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."funbot-ext-events" or ((hsPkgs.pkgs-errors).buildDepError "funbot-ext-events"))
          ] ++ (if flags.old
          then [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            ]
          else [
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            ]);
        buildable = true;
        };
      };
    }