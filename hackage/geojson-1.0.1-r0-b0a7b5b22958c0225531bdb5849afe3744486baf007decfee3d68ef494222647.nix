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
      identifier = { name = "geojson"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2014";
      maintainer = "Dom De Re";
      author = "Dom De Re";
      homepage = "https://github.com/domdere/hs-geojson/issues";
      url = "";
      synopsis = "A thin GeoJSON Layer above the aeson library";
      description = "A thin GeoJSON Layer above the aeson library.\n\nIt currently conforms to version 1.0 of the GeoJSON spec which can be found here:\n\n<http://geojson.org/geojson-spec.html>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
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