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
      identifier = { name = "docusign-example"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Capital Match";
      maintainer = "dev@capital-match.com";
      author = "Jonathan Knowles";
      homepage = "https://github.com/capital-match/docusign-example#readme";
      url = "";
      synopsis = "DocuSign examples";
      description = "This package provides a basic demonstration of how to use the Haskell docusign-client package";
      buildType = "Simple";
    };
    components = {
      exes = {
        "docusign-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."docusign-base" or (errorHandler.buildDepError "docusign-base"))
            (hsPkgs."docusign-client" or (errorHandler.buildDepError "docusign-client"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          buildable = true;
        };
      };
    };
  }