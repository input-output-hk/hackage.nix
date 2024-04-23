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
    flags = { oauth-not-supported = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "yesod-auth-oauth"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "OAuth wrapper for yesod-auth";
      description = "OAuth client interface for yesod-auth.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-enumerator" or (errorHandler.buildDepError "http-enumerator"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ] ++ (if flags.oauth-not-supported
          then [
            (hsPkgs."authenticate-oauth" or (errorHandler.buildDepError "authenticate-oauth"))
          ]
          else [
            (hsPkgs."authenticate" or (errorHandler.buildDepError "authenticate"))
          ]);
        buildable = true;
      };
    };
  }