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
      specVersion = "1.10";
      identifier = { name = "geojson"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2010-2013";
      maintainer = "Dom De Re";
      author = "Dom De Re";
      homepage = "https://github.com/domdere/hs-geojson/issues";
      url = "";
      synopsis = "A thin GeoJSON Layer above the json library";
      description = "A thin GeoJSON Layer above the json library.\n\nIt currently conforms to version 1.0 of the GeoJSON spec which can be found here:\n\n<http://geojson.org/geojson-spec.html>\n\nIts built on top of the `json` library and doesn't currently take\nadvantage of laziness as much as it could, so those are areas for improvement";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }