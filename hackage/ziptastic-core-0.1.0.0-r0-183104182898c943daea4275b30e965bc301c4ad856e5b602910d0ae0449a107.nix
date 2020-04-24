{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ziptastic-core"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Elliot Cameron and Ziptastic and Grafted-In LLC";
      maintainer = "elliot@graftedin.io";
      author = "Elliot Cameron";
      homepage = "https://github.com/Ziptastic/ziptastic-haskell#readme";
      url = "";
      synopsis = "Core Servant specification for the Ziptastic API (https://www.getziptastic.com) for doing forward and reverse geocoding.";
      description = "This package provides a type-safe Servant specification for the Ziptastic\n(https://www.getziptastic.com) API for doing forward and reverse geocoding\nvia zip/postal code, latitude, and longitude.\n\nIf you want to use the Ziptastic API in your application, try the ziptastic-client package.\n\nThis package is maintained by Grafted-In (https://www.graftedin.io/).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."iso3166-country-codes" or ((hsPkgs.pkgs-errors).buildDepError "iso3166-country-codes"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
          ];
        buildable = true;
        };
      tests = {
        "test-core" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."here" or ((hsPkgs.pkgs-errors).buildDepError "here"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."iso3166-country-codes" or ((hsPkgs.pkgs-errors).buildDepError "iso3166-country-codes"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            (hsPkgs."ziptastic-core" or ((hsPkgs.pkgs-errors).buildDepError "ziptastic-core"))
            ];
          buildable = true;
          };
        };
      };
    }