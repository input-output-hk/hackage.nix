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
      identifier = { name = "dropbox-sdk"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kannan Goundan <kannan@cakoose.com>";
      author = "Kannan Goundan <kannan@cakoose.com>";
      homepage = "";
      url = "";
      synopsis = "A library to access the Dropbox HTTP API.";
      description = "The Dropbox HTTP API provides ways for applications to access\nusers' Dropbox accounts programmatically.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."urlencoded" or (errorHandler.buildDepError "urlencoded"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-enumerator" or (errorHandler.buildDepError "http-enumerator"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
          (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
        ];
        buildable = true;
      };
    };
  }