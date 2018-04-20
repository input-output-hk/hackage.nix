{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "weather-api";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "peter@standalone.su";
        author = "Peter";
        homepage = "https://github.com/cvb/hs-weather-api.git";
        url = "";
        synopsis = "Weather api implemented in haskell";
        description = "This library implement generic api for retrieving weather\nby http, and has google weather api as example.";
        buildType = "Simple";
      };
      components = {
        weather-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.hxt
            hsPkgs.HTTP
            hsPkgs.utf8-string
          ];
        };
      };
    }