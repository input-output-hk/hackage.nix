{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      old = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "funbot-client";
          version = "0.1.0.1";
        };
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
        funbot-client = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.funbot-ext-events
          ] ++ (if _flags.old
            then [
              hsPkgs.network
              hsPkgs.HTTP
            ]
            else [
              hsPkgs.network-uri
              hsPkgs.HTTP
            ]);
        };
      };
    }