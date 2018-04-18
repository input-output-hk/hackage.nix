{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "vtegtk3";
          version = "0.13.0.3";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@lists.sourceforge.net";
        author = "Andy Stewart, Axel Simon";
        homepage = "http://projects.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the VTE library.";
        description = "The VTE library inserts terminal capability strings into a trie, and then\nuses it to determine if data received from a pseudo-terminal is a control\nsequence or just random data. The sample program \"interpret\" illustrates\nmore or less what the widget sees after it filters incoming data.";
        buildType = "Custom";
      };
      components = {
        vtegtk3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.glib
            hsPkgs.pango
            hsPkgs.gtk3
          ];
        };
      };
    }