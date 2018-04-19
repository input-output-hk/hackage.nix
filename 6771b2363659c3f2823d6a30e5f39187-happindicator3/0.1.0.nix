{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      demo = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "happindicator3";
          version = "0.1.0";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "mlacorte365@gmail.com";
        author = "Michael LaCorte";
        homepage = "https://github.com/mlacorte/happindicator3";
        url = "";
        synopsis = "Binding to the appindicator library.";
        description = "libappindicator is a library for setting up indicator\nitems and menus on indicator panels, as used in the\nUnity environment in Ubuntu. This binding allows\nlibappindicator to be used from Haskell.";
        buildType = "Simple";
      };
      components = {
        happindicator3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.glib
            hsPkgs.gtk3
          ];
        };
        exes = {
          demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.gtk3
              hsPkgs.happindicator3
            ];
          };
        };
      };
    }