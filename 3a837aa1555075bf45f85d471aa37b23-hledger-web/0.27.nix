{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
      dev = false;
      library-only = false;
      old-locale = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hledger-web";
          version = "0.27";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "Web interface for the hledger accounting tool";
        description = "This is hledger's web interface.\nIt provides a more user-friendly and collaborative UI than the\ncommand-line or curses-style interfaces.\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, curses and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
        buildType = "Simple";
      };
      components = {
        "hledger-web" = {
          depends  = [
            hsPkgs.hledger-lib
            hsPkgs.hledger
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.clientsession
            hsPkgs.cmdargs
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hjsmin
            hsPkgs.http-conduit
            hsPkgs.http-client
            hsPkgs.HUnit
            hsPkgs.conduit-extra
            hsPkgs.parsec
            hsPkgs.safe
            hsPkgs.shakespeare
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.wai-handler-launch
            hsPkgs.warp
            hsPkgs.yaml
            hsPkgs.yesod
            hsPkgs.yesod-core
            hsPkgs.yesod-form
            hsPkgs.yesod-static
            hsPkgs.json
          ] ++ (if _flags.old-locale
            then [
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [ hsPkgs.time ]);
        };
        exes = {
          "hledger-web" = {
            depends  = [
              hsPkgs.hledger-lib
              hsPkgs.hledger
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.blaze-html
              hsPkgs.blaze-markup
              hsPkgs.bytestring
              hsPkgs.clientsession
              hsPkgs.cmdargs
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hjsmin
              hsPkgs.http-conduit
              hsPkgs.http-client
              hsPkgs.HUnit
              hsPkgs.conduit-extra
              hsPkgs.parsec
              hsPkgs.safe
              hsPkgs.shakespeare
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.wai-handler-launch
              hsPkgs.warp
              hsPkgs.yaml
              hsPkgs.yesod
              hsPkgs.yesod-core
              hsPkgs.yesod-form
              hsPkgs.yesod-static
              hsPkgs.json
              hsPkgs.hledger-web
            ] ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.hledger-lib
              hsPkgs.hledger
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.blaze-html
              hsPkgs.blaze-markup
              hsPkgs.bytestring
              hsPkgs.clientsession
              hsPkgs.cmdargs
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hjsmin
              hsPkgs.http-conduit
              hsPkgs.http-client
              hsPkgs.HUnit
              hsPkgs.conduit-extra
              hsPkgs.parsec
              hsPkgs.safe
              hsPkgs.shakespeare
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.wai-handler-launch
              hsPkgs.warp
              hsPkgs.yaml
              hsPkgs.yesod
              hsPkgs.yesod-core
              hsPkgs.yesod-form
              hsPkgs.yesod-static
              hsPkgs.json
              hsPkgs.hledger-web
              hsPkgs.hspec
              hsPkgs.yesod-test
            ] ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
        };
      };
    }