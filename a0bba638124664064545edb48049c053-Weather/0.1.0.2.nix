{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Weather";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bryan@bryanstamour.com";
        author = "Bryan St. Amour";
        homepage = "https://github.com/bstamour/weather";
        url = "";
        synopsis = "Library for interacting with the Weather Underground JSON API.";
        description = "Weather is a simple library for interacting with the Weather Underground JSON API. It is not complete, but it may be useful still.";
        buildType = "Simple";
      };
      components = {
        Weather = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.aeson
            hsPkgs.bytestring
          ];
        };
      };
    }