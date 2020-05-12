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
      identifier = { name = "GPX"; version = "0.6.3"; };
      license = "BSD-3-Clause";
      copyright = "2009 -- 2012 Tony Morris, Thomas DuBuisson";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Thomas DuBuisson";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Thomas DuBuisson";
      homepage = "https://github.com/tonymorris/geo-gpx";
      url = "";
      synopsis = "Parse GPX files";
      description = "Parse GPS Exchange (GPX) files using HXT into data structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."comonad-transformers" or (errorHandler.buildDepError "comonad-transformers"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."xsd" or (errorHandler.buildDepError "xsd"))
          ];
        buildable = true;
        };
      };
    }