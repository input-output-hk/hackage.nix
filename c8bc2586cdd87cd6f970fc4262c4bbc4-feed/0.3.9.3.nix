{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "feed";
          version = "0.3.9.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sigbjorn Finne <sof@forkIO.com>";
        author = "Sigbjorn Finne <sof@forkIO.com>";
        homepage = "https://github.com/sof/feed";
        url = "";
        synopsis = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
        description = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.\n\nTo help working with the multiple feed formats we've\nended up with, this set of modules provides parsers,\npretty printers and some utility code for querying\nand just generally working with a concrete representation\nof feeds in Haskell.";
        buildType = "Simple";
      };
      components = {
        feed = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.xml
            hsPkgs.utf8-string
            hsPkgs.time
            hsPkgs.time-locale-compat
          ];
        };
      };
    }