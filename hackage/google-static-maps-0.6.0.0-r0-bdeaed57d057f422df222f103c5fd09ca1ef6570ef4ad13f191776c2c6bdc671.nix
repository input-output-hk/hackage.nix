{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "google-static-maps"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Mike Pilgrem";
      maintainer = "public@pilgrem.com";
      author = "Mike Pilgrem";
      homepage = "https://github.com/mpilgrem/google-static-maps#readme";
      url = "";
      synopsis = "Bindings to the Google Maps Static API (formerly Static\nMaps API)";
      description = "The\n<https://developers.google.com/maps/documentation/maps-static/intro Google Maps Static API>\nreturns a map as an image via an HTTP request. This library\nprovides bindings in Haskell to that API.\n\nNB: The use of the Google Maps Static API services is\nsubject to the\n<https://cloud.google.com/maps-platform/terms/ Google Maps Platform Terms of Service>,\nwhich terms restrict the use of content. End Users' use of\nGoogle Maps is subject to the then-current Google\nMaps/Google Earth Additional Terms of Service at\n<https://maps.google.com/help/terms_maps.html> and Google\nPrivacy Policy at\n<https://www.google.com/policies/privacy/>.\n\nThis package has no connection with Google Inc. or its\naffiliates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytedump)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.double-conversion)
          (hsPkgs.http-client)
          (hsPkgs.JuicyPixels)
          (hsPkgs.memory)
          (hsPkgs.network-uri)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-JuicyPixels)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }