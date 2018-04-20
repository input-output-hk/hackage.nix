{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      production = true;
      threaded = true;
      devel = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hledger-web";
          version = "0.16.4";
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
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cabal-file-th
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.regexpr
              hsPkgs.safe
              hsPkgs.text
              hsPkgs.time
              hsPkgs.io-storage
              hsPkgs.failure
              hsPkgs.file-embed
              hsPkgs.template-haskell
              hsPkgs.yesod
              hsPkgs.yesod-core
              hsPkgs.yesod-form
              hsPkgs.yesod-json
              hsPkgs.yesod-static
              hsPkgs.aeson-native
              hsPkgs.blaze-html
              hsPkgs.clientsession
              hsPkgs.data-object
              hsPkgs.data-object-yaml
              hsPkgs.hamlet
              hsPkgs.shakespeare-css
              hsPkgs.shakespeare-js
              hsPkgs.shakespeare-text
              hsPkgs.transformers
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.warp
            ];
          };
        };
      };
    }