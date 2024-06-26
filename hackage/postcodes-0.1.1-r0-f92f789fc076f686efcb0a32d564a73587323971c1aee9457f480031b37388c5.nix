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
      specVersion = "1.8";
      identifier = { name = "postcodes"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hailmattyhalluk@gmail.com";
      author = "Matthew Hall";
      homepage = "https://github.com/mattyhall/haskell-postcodes";
      url = "";
      synopsis = "A library that gets postcode information from the uk-postcodes.com";
      description = "This library uses uk-postcodes.com to find the latitude and longitude of a postcode, postcodes in a certain area and the postcode that a location fits into";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }