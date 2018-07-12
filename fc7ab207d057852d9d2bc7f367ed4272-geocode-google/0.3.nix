{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "geocode-google";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mrd@debian.org";
        author = "Matthew Danish";
        homepage = "http://github.com/mrd/geocode-google";
        url = "";
        synopsis = "Geocoding using the Google Web API";
        description = "";
        buildType = "Simple";
      };
      components = {
        "geocode-google" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.hjson
            hsPkgs.network-uri
          ];
        };
      };
    }