{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "hasloGUI";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012, Bartosz Wojcik";
        maintainer = "Bartosz Wojcik <bartoszmwojcik@gmail.com>";
        author = "Bartosz Wojcik";
        homepage = "";
        url = "";
        synopsis = "Loan calculator Gtk GUI. Based on haslo (Haskell Loan) library.";
        description = "Example of usage of loan library named Haslo and of wtk-gtk wrapper over gtk.";
        buildType = "Simple";
      };
      components = {
        exes = {
          HasloGUI = {
            depends  = [
              hsPkgs.base
              hsPkgs.old-time
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.lenses
              hsPkgs.convertible
              hsPkgs.gtk
              hsPkgs.haslo
              hsPkgs.wtk
              hsPkgs.wtk-gtk
            ];
          };
        };
      };
    }