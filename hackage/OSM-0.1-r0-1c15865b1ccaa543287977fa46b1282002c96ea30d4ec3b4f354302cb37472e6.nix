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
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Tony Morris";
      maintainer = "tmorris@tmorris.net";
      author = "Tony Morris";
      homepage = "";
      url = "";
      synopsis = "Parse OpenStreetMap files";
      description = "Parse OpenStreetMap http:\\/\\/osm.org/ files using HXT into data structures.\nThe Geo.OSM module is the core module that exports all others.";
      buildType = "Simple";
    };
    components = {
      "OSM" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hxt)
          (hsPkgs.containers)
        ];
      };
    };
  }