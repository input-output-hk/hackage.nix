{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "manatee-reader";
          version = "0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2009 ~ 2010 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Feed reader extension for Manatee.";
        description = "manatee-reader is feed reader extension for Manatee (Haskell/Gtk+ Integrated Live Environment)";
        buildType = "Custom";
      };
      components = {
        manatee-reader = {
          depends  = [
            hsPkgs.base
            hsPkgs.manatee-core
            hsPkgs.dbus-client
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.gtk-serialized-event
            hsPkgs.gtk
            hsPkgs.text
            hsPkgs.webkit
            hsPkgs.feed
            hsPkgs.download-curl
            hsPkgs.utf8-string
          ];
        };
        exes = { manatee-reader = {}; };
      };
    }