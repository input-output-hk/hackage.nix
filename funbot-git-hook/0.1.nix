{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "funbot-git-hook";
          version = "0.1";
        };
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
          funbot-client-post-receive = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hit
              hsPkgs.funbot-client
              hsPkgs.funbot-ext-events
              hsPkgs.template
              hsPkgs.text
              hsPkgs.utf8-string
            ] ++ (if _flags.network-uri
              then [ hsPkgs.network-uri ]
              else [ hsPkgs.network ]);
          };
        };
      };
    }