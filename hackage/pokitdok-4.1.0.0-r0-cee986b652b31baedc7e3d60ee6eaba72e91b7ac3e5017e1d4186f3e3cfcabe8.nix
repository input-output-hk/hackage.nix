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
      specVersion = "1.8";
      identifier = { name = "pokitdok"; version = "4.1.0.0"; };
      license = "MIT";
      copyright = "Copyright © 2014 PokitDok Inc.";
      maintainer = "gage.swenson@pokitdok.com";
      author = "Gage Swenson";
      homepage = "https://platform.pokitdok.com";
      url = "";
      synopsis = "PokitDok Platform API Client for Haskell";
      description = "PokitDok's platform gives you access to X12 and Data APIs for health insurance claims, eligibility, providers, procedure pricing and more. This API client allows for seemless integration of API calls in an Haskell module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-string" or (errorHandler.buildDepError "base64-string"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hex" or (errorHandler.buildDepError "hex"))
          ];
        buildable = true;
        };
      };
    }