{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "OSM"; version = "0.6.3"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."comonad-transformers" or ((hsPkgs.pkgs-errors).buildDepError "comonad-transformers"))
          (hsPkgs."newtype" or ((hsPkgs.pkgs-errors).buildDepError "newtype"))
          ];
        buildable = true;
        };
      };
    }