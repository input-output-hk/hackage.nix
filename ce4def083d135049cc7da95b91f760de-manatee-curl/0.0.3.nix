{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "manatee-curl";
          version = "0.0.3";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2009 ~ 2010 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Download Manager extension for Manatee.";
        description = "manatee-curl is multithreads download manager extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nManual look <http://haskell.org/haskellwiki/Manatee>\n\nScreenshot at <http://goo.gl/MkVw>\n\nIRC channel:\n\nirc.freenode.net 6667 <##manatee>\n";
        buildType = "Custom";
      };
      components = {
        manatee-curl = {
          depends  = [
            hsPkgs.base
            hsPkgs.manatee-core
            hsPkgs.dbus-client
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.gtk-serialized-event
            hsPkgs.gtk
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.old-locale
            hsPkgs.glib
            hsPkgs.gio
            hsPkgs.filepath
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.curl
            hsPkgs.directory
            hsPkgs.template-haskell
            hsPkgs.derive
            hsPkgs.binary
            hsPkgs.regex-tdfa
          ];
        };
        exes = { manatee-curl = {}; };
      };
    }