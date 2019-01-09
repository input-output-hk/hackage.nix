{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gtk-serialized-event"; version = "0.12.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Andy Stewart";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "GTK+ Serialized event.";
      description = "For communicate GTK+ event in multi-processes GTK+ program,\nwe can use \"serializeEvent\" serialized event at *server* process,\nthen pass serialized event over the network, when *client* process receive\nserialized event from the network, we can use \"deserializeEvent serializedEvent mainDoEvent\"\nre-emit same event at *client* side.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          ];
        pkgconfig = [ (pkgconfPkgs.gdk-2.0) ];
        };
      };
    }