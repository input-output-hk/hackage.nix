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
      identifier = { name = "google-maps-geocoding"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Mike Pilgrem";
      maintainer = "public@pilgrem.com";
      author = "Mike Pilgrem";
      homepage = "https://github.com/mpilgrem/google-maps-geocoding#readme";
      url = "";
      synopsis = "Google Maps Geocoding API bindings";
      description = "The <https://developers.google.com/maps/documentation/geocoding/intro Google Maps Geocoding API>\nprovides a direct way to access geocoding and reverse\ngeocoding services via an HTTP request. This library\npackage provides bindings in Haskell to that API.\n\nNB: The use of the API's services is subject to the\n<https://developers.google.com/maps/terms Google Maps APIs Terms of Service>,\nwhich terms restrict the use of content (eg no use without\na Google map).\n\nThis package has no connection with Google Inc. or its\naffiliates.";
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