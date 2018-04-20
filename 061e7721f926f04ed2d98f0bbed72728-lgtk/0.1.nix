{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lgtk";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "divipp@gmail.com";
        author = "Péter Diviánszky";
        homepage = "";
        url = "";
        synopsis = "lens-based GUI with Gtk backend";
        description = "Try the demo executable lgtkdemo and read the source.\n\nKey ingredients:\n\n* monadic lenses\n\n* expandable state\n\n* lens-based GUI";
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
            hsPkgs.data-lens
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