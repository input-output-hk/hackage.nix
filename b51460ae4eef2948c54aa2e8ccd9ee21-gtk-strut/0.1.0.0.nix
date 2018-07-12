{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gtk-strut";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Ivan Malison";
        maintainer = "IvanMalison@gmail.com";
        author = "Ivan Malison";
        homepage = "https://github.com/IvanMalison/gtk-strut#readme";
        url = "";
        synopsis = "Libary for creating strut windows with gi-gtk";
        description = "Please see the README on Github at <https://github.com/IvanMalison/gtk-strut#readme>";
        buildType = "Simple";
      };
      components = {
        "gtk-strut" = {
          depends  = [
            hsPkgs.base
            hsPkgs.gi-gdk
            hsPkgs.gi-gtk
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }