{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "google-maps-geocoding";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Mike Pilgrem";
      maintainer = "public@pilgrem.com";
      author = "Mike Pilgrem";
      homepage = "https://github.com/mpilgrem/google-maps-geocoding#readme";
      url = "";
      synopsis = "Google Maps Geocoding API bindings";
      description = "The Google Maps Geocoding API provides a direct way to\naccess geocoding and reverse geocoding services via an HTTP\nrequest.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-client)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
        ];
      };
    };
  }