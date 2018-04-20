{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xmonad-contrib-gpl";
          version = "0.12.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "kaction@gnu.org";
        author = "Dmitry Bogatov & others";
        homepage = "http://xmonad.org/";
        url = "";
        synopsis = "Third party extensions for xmonad";
        description = "Third party tiling algorithms, configurations and scripts to xmonad,\na tiling window manager for X, released under GPL license.";
        buildType = "Simple";
      };
      components = {
        xmonad-contrib-gpl = {
          depends  = [
            hsPkgs.base
            hsPkgs.xmonad
            hsPkgs.xmonad-contrib
            hsPkgs.mtl
          ];
        };
      };
    }