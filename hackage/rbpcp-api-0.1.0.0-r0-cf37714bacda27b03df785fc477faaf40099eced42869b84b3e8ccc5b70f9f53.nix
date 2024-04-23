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
      identifier = { name = "rbpcp-api"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "runesvend@gmail.com";
      author = "Rune K. Svendsen";
      homepage = "http://paychandoc.runeks.me/";
      url = "";
      synopsis = "RESTful Bitcoin Payment Channel Protocol Servant API description";
      description = "RESTful Bitcoin Payment Channel Protocol (RBPCP) allows a client to send Bitcoin payments to a server by establishing a Bitcoin payment channel with the server in a standardized manner.\nThis library provides Servant API endpoints for RBPCP.\nAPI spec: http://paychandoc.runeks.me/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskoin-core" or (errorHandler.buildDepError "haskoin-core"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
        ];
        buildable = true;
      };
    };
  }