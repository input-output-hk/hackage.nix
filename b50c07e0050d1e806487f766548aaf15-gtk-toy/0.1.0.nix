{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gtk-toy";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Sloan <mgsloan@gmail.com>";
        author = "Michael Sloan";
        homepage = "";
        url = "";
        synopsis = "Convenient Gtk canvas with mouse and keyboard input.";
        description = "The Gtk Toy Framework is a simplifying interface over Gtk for creating\napplications which draw things and interact with the mouse and keyboard.  It\nhandles the minutae of setting up the Gtk window and canvas, and processes\nthe input events into more palatable data structures.";
        buildType = "Simple";
      };
      components = {
        "gtk-toy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.gtk
            hsPkgs.containers
          ];
        };
      };
    }