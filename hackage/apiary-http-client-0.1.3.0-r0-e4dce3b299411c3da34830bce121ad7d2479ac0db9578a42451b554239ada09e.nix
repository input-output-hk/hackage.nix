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
      identifier = { name = "apiary-http-client"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "winterland1989@gmail.com";
      author = "winterland";
      homepage = "https://github.com/winterland1989/apiary-http-client";
      url = "";
      synopsis = "A http client for Apiary.";
      description = "A HTTP Client for Apiary, using Apiary's extension api, suitable for proxying HTTP request to backend API, with flexible APIs and streamming proxying abilities.\n\nThis module also reexport Network.HTTP.Client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."types-compat" or (errorHandler.buildDepError "types-compat"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."apiary" or (errorHandler.buildDepError "apiary"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }