{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "google-static-maps"; version = "0.3.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytedump" or ((hsPkgs.pkgs-errors).buildDepError "bytedump"))
          (hsPkgs."double-conversion" or ((hsPkgs.pkgs-errors).buildDepError "double-conversion"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          (hsPkgs."servant-JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "servant-JuicyPixels"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }