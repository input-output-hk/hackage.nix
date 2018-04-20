{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HSlippyMap";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "m@j4.pe";
        author = "Jean-Alexandre Peyroux";
        homepage = "https://github.com/j4/HSlippyMap";
        url = "";
        synopsis = "OpenStreetMap Slippy Map";
        description = "Use OpenStreetMap Slippy Map with Haskell : http://wiki.openstreetmap.org/wiki/Slippy_map_tilenames#Haskell";
        buildType = "Simple";
      };
      components = {
        HSlippyMap = {
          depends  = [ hsPkgs.base ];
        };
      };
    }