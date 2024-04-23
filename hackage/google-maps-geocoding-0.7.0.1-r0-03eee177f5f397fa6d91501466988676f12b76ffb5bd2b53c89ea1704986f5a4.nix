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
      specVersion = "1.10";
      identifier = { name = "google-maps-geocoding"; version = "0.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Mike Pilgrem";
      maintainer = "public@pilgrem.com";
      author = "Mike Pilgrem";
      homepage = "https://github.com/mpilgrem/google-maps-geocoding#readme";
      url = "";
      synopsis = "Bindings to the Google Geocoding API (formerly Maps\nGeocoding API)";
      description = "The\n<https://developers.google.com/maps/documentation/geocoding/intro Google Geocoding API>\nprovides a direct way to access geocoding and reverse\ngeocoding services via an HTTP request. This library\npackage provides bindings in Haskell to that API.\n\nNB: The use of the API's services is subject to the\n<https://cloud.google.com/maps-platform/terms/ Google Maps Platform Terms of Service>,\nwhich terms restrict the use of content. End Users’ use of\nGoogle Maps is subject to the then-current Google\nMaps/Google Earth Additional Terms of Service at\n<https://maps.google.com/help/terms_maps.html> and Google\nPrivacy Policy at\n<https://www.google.com/policies/privacy/>.\n\nThis package has no connection with Google Inc. or its\naffiliates.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."google-static-maps" or (errorHandler.buildDepError "google-static-maps"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }