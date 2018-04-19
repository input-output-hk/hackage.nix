{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "OSM";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Tony Morris";
        maintainer = "code@tmorris.net";
        author = "Tony Morris";
        homepage = "http://code.google.com/p/geo-osm/";
        url = "";
        synopsis = "Parse OpenStreetMap files";
        description = "Parse OpenStreetMap http:\\/\\/osm.org/ files using HXT into data structures.\nThe Geo.OSM module is the core module that exports all others.";
        buildType = "Simple";
      };
      components = {
        OSM = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.hxt-extras
            hsPkgs.containers
          ];
        };
      };
    }