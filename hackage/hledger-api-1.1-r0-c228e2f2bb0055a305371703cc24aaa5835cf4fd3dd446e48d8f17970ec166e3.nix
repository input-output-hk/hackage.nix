{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hledger-api";
        version = "1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "Web API server for the hledger accounting tool";
      description = "This is a simple web API server for hledger data.\nIt comes with a series of simple client-side web app examples.\n\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, curses and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hledger-api" = {
          depends  = [
            (hsPkgs.hledger-lib)
            (hsPkgs.hledger)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.Decimal)
            (hsPkgs.docopt)
            (hsPkgs.either)
            (hsPkgs.microlens)
            (hsPkgs.microlens-platform)
            (hsPkgs.safe)
            (hsPkgs.servant-server)
            (hsPkgs.servant-swagger)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }