{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "yi-gtk";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "dons@cse.unsw.edu.au";
        author = "Don Stewart";
        homepage = "";
        url = "";
        synopsis = "GTK backend for Yi";
        description = "Core functions for the GTK backend of Yi.\nNote that you will need the yi package to use this.\n\nNote that this is *not* for versions of Yi 0.3 or higher!";
        buildType = "Simple";
      };
      components = {
        yi-gtk = {
          depends  = [
            hsPkgs.ghc
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.gtk
            hsPkgs.sourceview
            hsPkgs.regex-posix
            hsPkgs.filepath
            hsPkgs.yi
          ];
        };
      };
    }