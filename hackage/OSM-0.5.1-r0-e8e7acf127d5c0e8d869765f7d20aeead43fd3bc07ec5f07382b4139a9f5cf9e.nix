{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "OSM";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2010 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "http://code.google.com/p/geo-osm/";
      url = "";
      synopsis = "Parse OpenStreetMap files";
      description = "Parse OpenStreetMap http:\\/\\/osm.org/ files using HXT into data structures.\nThe Data.Geo.OSM module is the core module that exports all others.";
      buildType = "Simple";
    };
    components = {
      "OSM" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hxt)
          (hsPkgs.hxt-extras)
          (hsPkgs.containers)
        ];
      };
    };
  }