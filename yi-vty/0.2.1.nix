{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "yi-vty";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "dons@cse.unsw.edu.au";
        author = "Don Stewart";
        homepage = "";
        url = "";
        synopsis = "Vty backend for Yi";
        description = "Core functions for the Vty backend of Yi.\nNote that you will need the yi package to use this.\n\nNote that this package is intended for Yi versions 0.2 and below, *not* 0.3, 0.4 or up.\nThis and yi-gtk are functionally obsolete.";
        buildType = "Simple";
      };
      components = {
        yi-vty = {
          depends  = [
            hsPkgs.ghc
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.vty
            hsPkgs.regex-posix
            hsPkgs.filepath
            hsPkgs.yi
          ];
        };
      };
    }