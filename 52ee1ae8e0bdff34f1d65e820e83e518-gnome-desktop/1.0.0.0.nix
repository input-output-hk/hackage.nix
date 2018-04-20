{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "gnome-desktop";
          version = "1.0.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "2009 Colin Adams";
        maintainer = "colin@colina.demon.co.uk";
        author = "Colin Adams";
        homepage = "";
        url = "";
        synopsis = "Randomly set a picture as the GNOME desktop background";
        description = "gnome-desktop is a program for displaying random pictures on your GNOME desktop background.\nIt reads a sub-directory of \$HOME (by default: Pictures) every n\nminutes (default: 1440 = once/per day) and every s seconds (default:\n50) picks a random file and sets the gconf key\n/desktop/gnome/background/picture_filename to the absolute path to\nthat file.";
        buildType = "Simple";
      };
      components = {
        exes = {
          gnome-desktop = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.gtk
              hsPkgs.glib
              hsPkgs.gconf
            ];
          };
        };
      };
    }