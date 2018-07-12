{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "google-static-maps";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Mike Pilgrem";
        maintainer = "public@pilgrem.com";
        author = "Mike Pilgrem";
        homepage = "https://github.com/mpilgrem/google-static-maps#readme";
        url = "";
        synopsis = "Bindings to the Google Static Maps API";
        description = "The <https://developers.google.com/maps/documentation/static-maps/intro Google Static Maps API>\nreturns a map as an image via an HTTP request. This library\nprovides bindings in Haskell to that API.\n\nNB: The use of the Google Static Maps API services is\nsubject to the <https://developers.google.com/maps/terms Google Maps APIs Terms of Service>,\nwhich terms restrict the use of content.\n\nThis package has no connection with Google Inc. or its\naffiliates.";
        buildType = "Simple";
      };
      components = {
        "google-static-maps" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.bytedump
            hsPkgs.cryptonite
            hsPkgs.double-conversion
            hsPkgs.http-client
            hsPkgs.JuicyPixels
            hsPkgs.memory
            hsPkgs.MissingH
            hsPkgs.network-uri
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.servant-JuicyPixels
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
      };
    }