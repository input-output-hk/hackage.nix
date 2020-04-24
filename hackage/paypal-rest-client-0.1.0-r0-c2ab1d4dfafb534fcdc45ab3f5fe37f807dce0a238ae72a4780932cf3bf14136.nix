{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "paypal-rest-client"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "vc@braden-walters.info";
      author = "Braden Walters";
      homepage = "https://github.com/meoblast001/paypal-rest-client";
      url = "";
      synopsis = "A client to connect to PayPal's REST API (v1)";
      description = "Library to connect with and use PayPal's\n<https://developer.paypal.com/docs/api/ REST API v1>. For documentation, see\nthe <https://github.com/meoblast001/paypal-rest-client/blob/master/README.md README>.\nDuring releases under 1.0.0, please use exact version numbers as bug fixes may\nrequire breaking changes while this library is unstable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."Decimal" or ((hsPkgs.pkgs-errors).buildDepError "Decimal"))
          (hsPkgs."country-codes" or ((hsPkgs.pkgs-errors).buildDepError "country-codes"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }