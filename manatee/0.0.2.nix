{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "manatee";
          version = "0.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2009 ~ 2010 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "The Haskell/Gtk+ Integrated Live Environment";
        description = "Manatee is Haskell integrated environment written in Haskell.\n\nThe goal of the Manatee project is to provide\na fast, safe and flexible integrated environment for haskell hacking.\n\nYou can consider it is new environment mix Gnome and Emacs.\nLike Gnome to provide friendly graphics interface and work efficient like Emacs.\n\nManatee use multi-processes framework, any sub-module running in separate process to protected core won't crash.\nSo it minimize your losses when some unexpected exception throw in extension.\n\nYou can find screenshots at : <http://goo.gl/MkVw>\n\nBelow is build step for Manatee:\n\n1) Install C library:\nIn Debian use below command:\n\n> sudo aptitude install libgtksourceview2.0-dev libgconf2-dev libwebkit-dev libcurl4-openssl-dev libgtkimageview-dev libpoppler-glib-dev poppler-data libtagc0-dev -y\n\n2) Install Gtk2hs:\n\n> cabal install gtk2hs-buildtools gtk\n\nAnd make sure `HOME/.cabal/bin/` in your PATH.\n\n3) Install Manatee:\n\n> cabal install manatee-core manatee-anything manatee-browser manatee-editor manatee-filemanager manatee-imageviewer manatee-ircclient manatee-mplayer manatee-pdfviewer manatee-processmanager manatee-reader manatee\n\nThat's all, then type command \"manatee\" to play it! :)\n\nNow Manatee looks can't work in XMonad, i'm working on it.\nIt's no problem if you use Gnome.\n";
        buildType = "Simple";
      };
      components = {
        manatee = {};
        exes = {
          manatee = {
            depends  = [
              hsPkgs.base
              hsPkgs.manatee-core
              hsPkgs.containers
              hsPkgs.unix
              hsPkgs.mtl
              hsPkgs.gtk-serialized-event
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.gtk
              hsPkgs.dbus-client
              hsPkgs.stm
              hsPkgs.cairo
              hsPkgs.directory
              hsPkgs.dbus-core
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }