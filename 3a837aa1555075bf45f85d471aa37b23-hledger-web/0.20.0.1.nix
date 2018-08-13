{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      threaded = true;
      blaze_html_0_4 = false;
      dev = false;
      library-only = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hledger-web";
        version = "0.20.0.1";
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
      "hledger-web" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-static)
          (hsPkgs.yesod-default)
          (hsPkgs.yesod-form)
          (hsPkgs.clientsession)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.hamlet)
          (hsPkgs.shakespeare-css)
          (hsPkgs.shakespeare-js)
          (hsPkgs.shakespeare-text)
          (hsPkgs.hjsmin)
          (hsPkgs.monad-control)
          (hsPkgs.wai-extra)
          (hsPkgs.yaml)
          (hsPkgs.http-conduit)
          (hsPkgs.directory)
          (hsPkgs.warp)
          (hsPkgs.data-default)
          (hsPkgs.hledger)
          (hsPkgs.hledger-lib)
          (hsPkgs.cmdargs)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.HUnit)
          (hsPkgs.network-conduit)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.regexpr)
          (hsPkgs.safe)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-handler-launch)
          (hsPkgs.warp)
          (hsPkgs.yaml)
        ] ++ (if _flags.blaze_html_0_4
          then [ (hsPkgs.blaze-html) ]
          else [
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
          ]);
      };
      exes = {
        "hledger-web" = {
          depends  = [
            (hsPkgs.hledger-web)
            (hsPkgs.hledger)
            (hsPkgs.hledger-lib)
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.regexpr)
            (hsPkgs.safe)
            (hsPkgs.time)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-default)
            (hsPkgs.yesod-static)
            (hsPkgs.clientsession)
            (hsPkgs.hamlet)
            (hsPkgs.network-conduit)
            (hsPkgs.shakespeare-text)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-handler-launch)
            (hsPkgs.warp)
            (hsPkgs.yaml)
            (hsPkgs.hjsmin)
            (hsPkgs.http-conduit)
            (hsPkgs.data-default)
          ] ++ (if _flags.blaze_html_0_4
            then [ (hsPkgs.blaze-html) ]
            else [
              (hsPkgs.blaze-html)
              (hsPkgs.blaze-markup)
            ]);
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hledger-web)
            (hsPkgs.yesod-test)
            (hsPkgs.yesod-default)
            (hsPkgs.yesod-core)
          ];
        };
      };
    };
  }