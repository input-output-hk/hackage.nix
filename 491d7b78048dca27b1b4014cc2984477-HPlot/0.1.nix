{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HPlot";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yakov Z <iakovz@gmail.com>";
        author = "Yakov Z <iakovz@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A minimal monadic PLplot interface for Haskell";
        description = "This package provides simple monadic interface to the PLplot cross-platform software\npackage for creating scientific plots.\n\nPlplotCanvas widget is implemented to be compatible with gtk2hs. PLplot type class allows\naddition of other display drivers without need to adopt application code\n\nThe idea was that with the help of PLplotM monad it should be easy to make\nmore abstract interfaces and combinators to do plots\n";
        buildType = "Simple";
      };
      components = {
        "HPlot" = {
          depends  = [
            hsPkgs.base
            hsPkgs.gtk
            hsPkgs.glade
            hsPkgs.glib
          ];
          pkgconfig = [
            pkgconfPkgs.plplotd-gnome2
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        exes = {
          "Example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.glade
              hsPkgs.glib
            ];
            pkgconfig = [
              pkgconfPkgs.plplotd-gnome2
            ];
          };
        };
      };
    }