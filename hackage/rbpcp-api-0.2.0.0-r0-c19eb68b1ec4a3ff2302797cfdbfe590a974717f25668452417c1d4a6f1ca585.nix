{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rbpcp-api"; version = "0.2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "runesvend@gmail.com";
      author = "Rune K. Svendsen";
      homepage = "http://paychandoc.runeks.me/";
      url = "";
      synopsis = "RESTful Bitcoin Payment Channel Protocol Servant API description";
      description = "RESTful Bitcoin Payment Channel Protocol (RBPCP) allows a client to send Bitcoin payments to a server, by establishing a Bitcoin payment channel with the server in a standardized manner.\nThis library provides Servant API endpoints for RBPCP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskoin-core" or ((hsPkgs.pkgs-errors).buildDepError "haskoin-core"))
          (hsPkgs."bitcoin-payment-protocol" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-payment-protocol"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          ];
        buildable = true;
        };
      };
    }