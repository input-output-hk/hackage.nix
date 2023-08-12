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
      identifier = { name = "ms-auth"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Marco Zocca, UnfoldML";
      maintainer = "oss@unfoldml.com";
      author = "Marco Zocca";
      homepage = "https://github.com/unfoldml/ms-graph-api";
      url = "";
      synopsis = "Microsoft Authentication API";
      description = "Bindings to the Microsoft Identity API / Active Directory (AD) for building applications that use either Authorization Code (User-facing) or (App-only) authorization flows. Helper functions are provided for building OAuth2 authentication flows and keep tokens transactionally secure and up to date.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hoauth2" or (errorHandler.buildDepError "hoauth2"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."jwt" or (errorHandler.buildDepError "jwt"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          (hsPkgs."validation-micro" or (errorHandler.buildDepError "validation-micro"))
          ];
        buildable = true;
        };
      };
    }