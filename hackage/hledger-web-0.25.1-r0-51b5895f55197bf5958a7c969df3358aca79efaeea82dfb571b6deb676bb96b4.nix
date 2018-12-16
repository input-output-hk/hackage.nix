{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      threaded = true;
      dev = false;
      library-only = false;
      old-locale = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hledger-web";
        version = "0.25.1";
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
      "library" = {
        depends = [
          (hsPkgs.hledger)
          (hsPkgs.hledger-lib)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.clientsession)
          (hsPkgs.cmdargs)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hjsmin)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client)
          (hsPkgs.HUnit)
          (hsPkgs.network-conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.parsec)
          (hsPkgs.regexpr)
          (hsPkgs.safe)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-handler-launch)
          (hsPkgs.warp)
          (hsPkgs.yaml)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-static)
          (hsPkgs.json)
        ] ++ (if flags.old-locale
          then [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]
          else [ (hsPkgs.time) ]);
      };
      exes = {
        "hledger-web" = {
          depends = [
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
            (hsPkgs.hledger-web)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.clientsession)
            (hsPkgs.cmdargs)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hjsmin)
            (hsPkgs.http-conduit)
            (hsPkgs.http-client)
            (hsPkgs.HUnit)
            (hsPkgs.network-conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.parsec)
            (hsPkgs.regexpr)
            (hsPkgs.safe)
            (hsPkgs.shakespeare)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-handler-launch)
            (hsPkgs.warp)
            (hsPkgs.yaml)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-static)
            (hsPkgs.json)
          ] ++ (if flags.old-locale
            then [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]
            else [ (hsPkgs.time) ]);
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.hledger-web)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.hspec)
            (hsPkgs.yesod)
            (hsPkgs.yesod-test)
          ];
        };
      };
    };
  }