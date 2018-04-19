{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "gtk-helpers";
          version = "0.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.es";
        author = "Ivan Perez";
        homepage = "http://keera.es/blog/community";
        url = "";
        synopsis = "A collection of auxiliary operations and widgets related to Gtk";
        description = "";
        buildType = "Simple";
      };
      components = {
        gtk-helpers = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.process
            hsPkgs.gtk
            hsPkgs.gio
            hsPkgs.glib
            hsPkgs.mtl
            hsPkgs.array
          ];
        };
      };
    }