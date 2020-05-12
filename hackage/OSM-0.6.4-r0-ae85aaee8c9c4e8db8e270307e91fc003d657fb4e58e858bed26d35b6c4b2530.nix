{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "OSM"; version = "0.6.4"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."comonad-transformers" or (errorHandler.buildDepError "comonad-transformers"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
          ];
        buildable = true;
        };
      };
    }