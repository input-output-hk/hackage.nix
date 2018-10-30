{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      dev = false;
      library-only = false;
      oldtime = false;
      threaded = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hledger-web";
        version = "1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "Web interface for the hledger accounting tool";
      description = "This is hledger's web interface.\nIt provides a more user-friendly and collaborative UI than the\ncommand-line or curses-style interfaces.\n\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, curses and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.hledger-lib)
          (hsPkgs.hledger)
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
          (hsPkgs.conduit-extra)
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
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
        ] ++ (if flags.oldtime
          then [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]
          else [
            (hsPkgs.time)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
      exes = {
        "hledger-web" = {
          depends  = ([
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
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
            (hsPkgs.conduit-extra)
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
            (hsPkgs.parsec)
            (hsPkgs.hledger-web)
          ] ++ (if flags.oldtime
            then [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]
            else [
              (hsPkgs.time)
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
        };
      };
      tests = {
        "test" = {
          depends  = ([
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
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
            (hsPkgs.conduit-extra)
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
            (hsPkgs.hledger-web)
            (hsPkgs.hspec)
            (hsPkgs.yesod-test)
          ] ++ (if flags.oldtime
            then [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]
            else [
              (hsPkgs.time)
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
        };
      };
    };
  }