{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "gtkrsync";
          version = "1.0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2007-2010 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://hg.complete.org/gtkrsync";
        url = "";
        synopsis = "Gnome rsync progress display";
        description = "gtkrsync is a simple GUI that displays a running status display\nbuilt from rsync.  This status display includes a per-file and overall status\nbar, overall estimated time to completion, and an expandable button that shows\nall rsync status output.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "gtkrsync" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.gtk
              hsPkgs.gconf
              hsPkgs.glade
              hsPkgs.regex-posix
              hsPkgs.MissingH
              hsPkgs.process
            ];
          };
          "gtkrsyncp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.gtk
              hsPkgs.gconf
              hsPkgs.glade
              hsPkgs.regex-posix
              hsPkgs.MissingH
              hsPkgs.process
            ];
          };
        };
      };
    }