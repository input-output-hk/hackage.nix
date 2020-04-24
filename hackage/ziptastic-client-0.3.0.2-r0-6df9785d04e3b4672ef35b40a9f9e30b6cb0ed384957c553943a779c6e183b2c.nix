{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ziptastic-client"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Elliot Cameron and Ziptastic and Grafted-In LLC";
      maintainer = "elliot@graftedin.io";
      author = "Elliot Cameron";
      homepage = "https://github.com/Ziptastic/ziptastic-haskell#readme";
      url = "";
      synopsis = "A type-safe client for the Ziptastic API for doing forward and reverse geocoding.";
      description = "A convenient and type-safe client library for the\nZiptastic (<https://www.getziptastic.com/>) API providing forward and reverse\ngeocoding via country, zip code (postal code), latitude, and longitude.\n\nThis package is maintained by Grafted-In (<https://www.graftedin.io/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."iso3166-country-codes" or ((hsPkgs.pkgs-errors).buildDepError "iso3166-country-codes"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ziptastic-core" or ((hsPkgs.pkgs-errors).buildDepError "ziptastic-core"))
          ];
        buildable = true;
        };
      tests = {
        "test-client" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."iso3166-country-codes" or ((hsPkgs.pkgs-errors).buildDepError "iso3166-country-codes"))
            (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
            (hsPkgs."ziptastic-client" or ((hsPkgs.pkgs-errors).buildDepError "ziptastic-client"))
            ];
          buildable = true;
          };
        };
      };
    }