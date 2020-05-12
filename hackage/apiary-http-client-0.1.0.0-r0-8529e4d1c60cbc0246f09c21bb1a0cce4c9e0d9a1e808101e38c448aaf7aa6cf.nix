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
      identifier = { name = "apiary-http-client"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "winterland1989@gmail.com";
      author = "winterland";
      homepage = "https://github.com/winterland1989/apiary-http-client";
      url = "";
      synopsis = "A http client for Apiary.";
      description = "";
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
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }