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
      threaded = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hledger-web";
        version = "1.10";
      };
      license = "GPL-3.0-only";
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
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.clientsession)
          (hsPkgs.cmdargs)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hjsmin)
          (hsPkgs.hledger)
          (hsPkgs.hledger-lib)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.json)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
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
        ];
      };
      exes = {
        "hledger-web" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hledger-web)
          ];
        };
      };
    };
  }