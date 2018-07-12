{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lgtk";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "divipp@gmail.com";
        author = "Péter Diviánszky";
        homepage = "http://people.inf.elte.hu/divip/LGtk/index.html";
        url = "";
        synopsis = "lens-based API for Gtk";
        description = "The main interface module of LGtk is \"LGtk\".\n\nSee also <http://people.inf.elte.hu/divip/LGtk/index.html>";
        buildType = "Simple";
      };
      components = {
        "lgtk" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.system-filepath
            hsPkgs.fsnotify
            hsPkgs.data-lens
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.gtk
          ];
        };
        exes = {
          "lgtkdemo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lgtk
            ];
          };
        };
      };
    }