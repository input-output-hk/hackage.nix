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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "iso3166-country-codes";
        version = "0.20090527.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "jon.fairbairn@cl.cam.ac.uk";
      author = "Jón Fairbairn";
      homepage = "";
      url = "";
      synopsis = "A datatype for ISO 3166 country codes";
      description = "Defines datatype CountryCode that has a two\nletter constructor corresponding to each of the two letter\nISO 3166 country codes, and mappings from that type to the\nofficial name of the country.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }