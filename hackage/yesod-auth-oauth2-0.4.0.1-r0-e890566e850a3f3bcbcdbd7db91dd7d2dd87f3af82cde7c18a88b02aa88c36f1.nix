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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-auth-oauth2"; version = "0.4.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Tom Streller";
      homepage = "http://github.com/thoughtbot/yesod-auth-oauth2";
      url = "";
      synopsis = "OAuth 2.0 authentication plugins";
      description = "Library to authenticate with OAuth 2.0 for Yesod web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."hoauth2" or (errorHandler.buildDepError "hoauth2"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      exes = {
        "yesod-auth-oauth2-example" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."load-env" or (errorHandler.buildDepError "load-env"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
            (hsPkgs."yesod-auth-oauth2" or (errorHandler.buildDepError "yesod-auth-oauth2"))
            ];
          buildable = if !flags.example then false else true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."yesod-auth-oauth2" or (errorHandler.buildDepError "yesod-auth-oauth2"))
            ];
          buildable = true;
          };
        };
      };
    }