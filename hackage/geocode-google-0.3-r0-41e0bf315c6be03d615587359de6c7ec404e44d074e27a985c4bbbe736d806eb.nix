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
      specVersion = "1.2";
      identifier = { name = "geocode-google"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mrd@debian.org";
      author = "Matthew Danish";
      homepage = "http://github.com/mrd/geocode-google";
      url = "";
      synopsis = "Geocoding using the Google Web API";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hjson" or (errorHandler.buildDepError "hjson"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
        ];
        buildable = true;
      };
    };
  }