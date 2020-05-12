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
      identifier = { name = "google-oauth2"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "https://github.com/pbrisbin/google-oauth2#readme";
      url = "";
      synopsis = "Google OAuth2 token negotiation";
      description = "See https://github.com/pbrisbin/google-oauth2#readme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hoauth2" or (errorHandler.buildDepError "hoauth2"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."google-oauth2" or (errorHandler.buildDepError "google-oauth2"))
            (hsPkgs."hoauth2" or (errorHandler.buildDepError "hoauth2"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."load-env" or (errorHandler.buildDepError "load-env"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }