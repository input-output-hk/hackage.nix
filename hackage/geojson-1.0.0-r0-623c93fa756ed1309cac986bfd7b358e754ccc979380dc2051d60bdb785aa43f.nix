{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "geojson"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2014";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }