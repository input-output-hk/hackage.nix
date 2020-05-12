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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-auth-oauth2"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pat Brisbin <pat@thoughtbot.com>";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."authenticate" or (errorHandler.buildDepError "authenticate"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."hoauth2" or (errorHandler.buildDepError "hoauth2"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      };
    }