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
    flags = { ghc7 = true; network-uri = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-auth-oauth2"; version = "0.0.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Streller";
      author = "Tom Streller";
      homepage = "http://github.com/scan/yesod-auth-oauth2";
      url = "";
      synopsis = "Library to authenticate with OAuth 2.0 for Yesod web applications.";
      description = "OAuth 2.0 authentication";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."authenticate" or (errorHandler.buildDepError "authenticate"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."hoauth2" or (errorHandler.buildDepError "hoauth2"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ])) ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }