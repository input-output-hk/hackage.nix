{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "manatee-pdfviewer";
          version = "0.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2009 ~ 2010 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "PDF viewer extension for Manatee.";
        description = "manatee-pdfviewer is PDF viewer extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nIf you see Chinese garbled in pdf viewer, make sure install package `poppler-data`\n\nFirst use below command install `poppler-data' in Debain:\n\n> sudo aptitude install poppler-data -y\n\nAnd replace Chinese font string in file `/etc/fonts/conf.d/49-sansserif.conf'";
        buildType = "Custom";
      };
      components = {
        "manatee-pdfviewer" = {
          depends  = [
            hsPkgs.base
            hsPkgs.manatee-core
            hsPkgs.dbus-client
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.gtk-serialized-event
            hsPkgs.poppler
            hsPkgs.gtk
            hsPkgs.cairo
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.utf8-string
          ];
        };
        exes = {
          "manatee-pdfviewer" = {};
        };
      };
    }