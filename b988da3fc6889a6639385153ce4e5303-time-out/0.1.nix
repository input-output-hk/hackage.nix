{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "time-out";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
        maintainer = "fr33domlover@riseup.net";
        author = "fr33domlover";
        homepage = "http://hub.darcs.net/fr33domlover/time-out";
        url = "";
        synopsis = "Execute a computation with a timeout";
        description = "This simple library allows you to execute a computation with a limit on its\nrunning time. If it finishes within the specified limit, you get the result\nit returns. Otherwise, i.e. if it doesn't finish in time, it will be aborted\nand you'll be notified.";
        buildType = "Simple";
      };
      components = {
        time-out = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.time-units
            hsPkgs.transformers
          ];
        };
      };
    }