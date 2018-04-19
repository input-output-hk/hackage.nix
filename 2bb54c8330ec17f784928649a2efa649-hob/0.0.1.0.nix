{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hob";
          version = "0.0.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) Sarunas Valaskevicius";
        maintainer = "Sarunas Valaskevicius <rakatan@gmail.com>";
        author = "Sarunas Valaskevicius";
        homepage = "http://svalaskevicius.github.io/hob/";
        url = "";
        synopsis = "A source code editor aiming for the convenience of use";
        description = "A simple command based code editor being developed for the mouse-free workflow.";
        buildType = "Simple";
      };
      components = {
        hob = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.glib
            hsPkgs.gtk3
            hsPkgs.pango
            hsPkgs.gtksourceview3
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.system-filepath
            hsPkgs.gtk-largeTreeStore
            hsPkgs.vector
          ];
        };
        exes = {
          hob = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk3
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.hob
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.gtksourceview3
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.hspec
              hsPkgs.gtk3
              hsPkgs.hob
              hsPkgs.text
              hsPkgs.gtksourceview3
            ];
          };
        };
      };
    }