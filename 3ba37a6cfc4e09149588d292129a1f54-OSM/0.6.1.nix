{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "OSM";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009 -- 2012 Tony Morris, Thomas DuBuisson";
        maintainer = "Tony Morris, Thomas DuBuisson";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Thomas DuBuisson";
        homepage = "https://github.com/tonymorris/geo-osm";
        url = "";
        synopsis = "Parse OpenStreetMap files";
        description = "Parse OpenStreetMap http:\\/\\/osm.org/ files using HXT into data structures.\nThe Data.Geo.OSM module is the core module that exports all others.";
        buildType = "Simple";
      };
      components = {
        "OSM" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.containers
            hsPkgs.data-lens
            hsPkgs.comonad-transformers
            hsPkgs.newtype
          ];
        };
      };
    }