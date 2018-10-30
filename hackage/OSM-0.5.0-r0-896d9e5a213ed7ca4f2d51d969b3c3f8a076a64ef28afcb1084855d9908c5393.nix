{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "OSM";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2010 Tony Morris";
      maintainer = "ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ";
      author = "Tony Morris";
      homepage = "http://code.google.com/p/geo-osm/";
      url = "";
      synopsis = "Parse OpenStreetMap files";
      description = "Parse OpenStreetMap http:\\/\\/osm.org/ files using HXT into data structures.\nThe Data.Geo.OSM module is the core module that exports all others.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hxt)
          (hsPkgs.hxt-extras)
          (hsPkgs.containers)
        ];
      };
    };
  }