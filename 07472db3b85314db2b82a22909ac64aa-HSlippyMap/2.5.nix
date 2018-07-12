{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HSlippyMap";
          version = "2.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "alex@xn--wxa.email";
        author = "Alexandre Peyroux";
        homepage = "https://github.com/apeyroux/HSlippyMap";
        url = "";
        synopsis = "OpenStreetMap Slippy Map";
        description = "OpenStreetMap (OSM) Slippy Map is, in general, a term referring to modern web maps which let you zoom and pan around (the map slips around when you drag the mouse). - http://wiki.openstreetmap.org/wiki/Slippy_Map";
        buildType = "Simple";
      };
      components = {
        "HSlippyMap" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }