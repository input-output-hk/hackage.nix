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
      specVersion = "2.2";
      identifier = { name = "naqsha"; version = "0.3.0.0"; };
      license = "(Apache-2.0 OR BSD-3-Clause)";
      copyright = "(c) 2016 Piyush P Kurur";
      maintainer = "ppk@cse.iitk.ac.in";
      author = "Piyush P Kurur";
      homepage = "http://github.com/naqsha/naqsha.git";
      url = "";
      synopsis = "A library for working with anything map related.";
      description = "Naqsha is a library to work with geospatial data types,\nlike latitudes and longitudes, mapping projects like openstreetmap,\nvarious map related file formats.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "geospatial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."geospatial" or (errorHandler.buildDepError "geospatial"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }