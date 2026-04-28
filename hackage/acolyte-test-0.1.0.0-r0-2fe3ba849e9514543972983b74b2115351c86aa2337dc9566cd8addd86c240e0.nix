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
      specVersion = "3.0";
      identifier = { name = "acolyte-test"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Josh Burgess <joshburgess.webdev@gmail.com>";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/acolyte";
      url = "";
      synopsis = "Testing utilities for acolyte APIs";
      description = "Test helpers for APIs built with acolyte. Direct dispatch\n(no network), response assertions, and warp-based integration testing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."acolyte-core" or (errorHandler.buildDepError "acolyte-core"))
          (hsPkgs."acolyte-server" or (errorHandler.buildDepError "acolyte-server"))
          (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
          (hsPkgs."spire-grpc" or (errorHandler.buildDepError "spire-grpc"))
          (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."acolyte-test" or (errorHandler.buildDepError "acolyte-test"))
            (hsPkgs."acolyte-core" or (errorHandler.buildDepError "acolyte-core"))
            (hsPkgs."acolyte-server" or (errorHandler.buildDepError "acolyte-server"))
            (hsPkgs."acolyte-openapi" or (errorHandler.buildDepError "acolyte-openapi"))
            (hsPkgs."acolyte-grpc" or (errorHandler.buildDepError "acolyte-grpc"))
            (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
            (hsPkgs."spire-grpc" or (errorHandler.buildDepError "spire-grpc"))
            (hsPkgs."spire-server" or (errorHandler.buildDepError "spire-server"))
            (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
          buildable = true;
        };
      };
    };
  }