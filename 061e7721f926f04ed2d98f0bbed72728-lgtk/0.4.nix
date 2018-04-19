{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lgtk";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "divipp@gmail.com";
        author = "Péter Diviánszky";
        homepage = "http://people.inf.elte.hu/divip/LGtk/index.html";
        url = "";
        synopsis = "lens-based API for Gtk";
        description = "The main interface module of LGtk is \"GUI.MLens.Gtk\".\n\nSee also <http://people.inf.elte.hu/divip/LGtk/index.html>";
        buildType = "Simple";
      };
      components = {
        lgtk = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.control-monad-free
            hsPkgs.gtk
          ];
        };
        exes = {
          lgtkdemo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.lgtk
            ];
          };
        };
      };
    }