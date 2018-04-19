{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
      blaze_html_0_5 = false;
      dev = false;
      library-only = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hledger-web";
          version = "0.18.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "A web interface for the hledger accounting tool.";
        description = "hledger is a library and set of user tools for working\nwith financial data (or anything that can be tracked in a\ndouble-entry accounting ledger.) It is a haskell port and\nfriendly fork of John Wiegley's Ledger. hledger provides\ncommand-line, curses and web interfaces, and aims to be a\nreliable, practical tool for daily use.";
        buildType = "Simple";
      };
      components = {
        hledger-web = {};
        exes = {
          hledger-web = {
            depends  = [
              hsPkgs.hledger
              hsPkgs.hledger-lib
              hsPkgs.base
              hsPkgs.cabal-file-th
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.io-storage
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.regexpr
              hsPkgs.safe
              hsPkgs.time
              hsPkgs.yesod
              hsPkgs.yesod-core
              hsPkgs.yesod-default
              hsPkgs.yesod-static
              hsPkgs.clientsession
              hsPkgs.hamlet
              hsPkgs.network-conduit
              hsPkgs.shakespeare-text
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.warp
              hsPkgs.yaml
            ] ++ (if _flags.blaze_html_0_5
              then [
                hsPkgs.blaze-html
                hsPkgs.blaze-markup
              ]
              else [ hsPkgs.blaze-html ]);
          };
        };
      };
    }