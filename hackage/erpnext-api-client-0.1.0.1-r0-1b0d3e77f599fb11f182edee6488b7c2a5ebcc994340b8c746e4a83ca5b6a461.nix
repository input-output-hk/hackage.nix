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
      specVersion = "3.6";
      identifier = { name = "erpnext-api-client"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2025 Intensovet GmbH";
      maintainer = "jakob.schoettl@intensovet.de";
      author = "Jakob Schöttl";
      homepage = "https://github.com/schoettl/erpnext-api-client";
      url = "";
      synopsis = "Generic API client library for ERPNext";
      description = "This is a Haskell API client for ERPNext. It aims to be a light-weight library based on http-client and user-provided record types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }