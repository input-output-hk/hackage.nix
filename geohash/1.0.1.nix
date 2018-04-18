{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "geohash";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 marius a. eriksen";
        maintainer = "marius a. eriksen";
        author = "marius a. eriksen";
        homepage = "";
        url = "";
        synopsis = "Geohash latitudes and longitudes.";
        description = "Implements the geohash algorithm described here:\n<http://en.wikipedia.org/wiki/Geohash>";
        buildType = "Simple";
      };
      components = {
        geohash = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }