{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "keera-hails-mvc-view-gtk";
          version = "0.0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.es";
        author = "Ivan Perez";
        homepage = "http://www.keera.es/blog/community/";
        url = "";
        synopsis = "Haskell on Gtk rails - Gtk-based View for MVC applications";
        description = "";
        buildType = "Simple";
      };
      components = {
        keera-hails-mvc-view-gtk = {
          depends  = [
            hsPkgs.base
            hsPkgs.keera-hails-mvc-view
            hsPkgs.gtk
            hsPkgs.gtk-helpers
          ];
        };
      };
    }