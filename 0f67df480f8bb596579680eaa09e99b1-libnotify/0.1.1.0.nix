{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libnotify";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
        author = "Emon Tsukimiya, Matvey Aksenov";
        homepage = "";
        url = "";
        synopsis = "Bindings to libnotify library";
        description = "The package provides a high level interface to libnotify API (see \"Libnotify\")\n\n\"Libnotify.C.Notify\" and \"Libnotify.C.NotifyNotification\" modules contain\nbindings to C-level functions if you're into that";
        buildType = "Simple";
      };
      components = {
        "libnotify" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.glib
            hsPkgs.gtk
          ];
          libs = [ pkgs.notify ];
        };
      };
    }