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
      identifier = { name = "ses-html-snaplet"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "David Johnson";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "Snaplet for the ses-html package";
      description = "Send HTML formatted emails using Amazon's SES REST API with blaze";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."ses-html" or (errorHandler.buildDepError "ses-html"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }