{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gtk-mac-integration";
          version = "0.3.3.0";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@sourceforge.net";
        author = "Duncan Coutts, Peter Gavin, Axel Simon, Hamish Mackenzie";
        homepage = "http://www.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Bindings for the Gtk/OS X integration library.";
        description = "gtk-mac-integration helps integrate Gtk applications with the native Mac\ndesktop and make it feel more like a Mac application.\nhttp://sourceforge.net/apps/trac/gtk-osx/wiki/Integrate";
        buildType = "Custom";
      };
      components = {
        gtk-mac-integration = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.glib
            hsPkgs.gtk
          ];
          pkgconfig = [
            pkgconfPkgs.gtk-mac-integration-gtk2
          ];
          build-tools = [
            hsPkgs.gtk2hsC2hs
            hsPkgs.gtk2hsHookGenerator
            hsPkgs.gtk2hsTypeGen
          ];
        };
      };
    }