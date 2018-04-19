{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gtk-largeTreeStore";
          version = "0.0.1.0";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) Sarunas Valaskevicius";
        maintainer = "Sarunas Valaskevicius <rakatan@gmail.com>";
        author = "Sarunas Valaskevicius";
        homepage = "";
        url = "";
        synopsis = "Large TreeStore support for gtk2hs";
        description = "Uses nested set model to store tree iterators and achieves larger data support than the\noriginal gtk2hs implementation.";
        buildType = "Simple";
      };
      components = {
        gtk-largeTreeStore = {
          depends  = [
            hsPkgs.base
            hsPkgs.glib
            hsPkgs.gtk3
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.nested-sets
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk-largeTreeStore
              hsPkgs.hspec
              hsPkgs.containers
              hsPkgs.gtk3
            ];
          };
        };
      };
    }