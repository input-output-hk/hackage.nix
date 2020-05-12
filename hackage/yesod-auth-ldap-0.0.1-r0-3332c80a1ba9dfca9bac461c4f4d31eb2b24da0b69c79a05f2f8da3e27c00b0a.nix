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
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.6.0";
      identifier = { name = "yesod-auth-ldap"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Litchard ";
      author = "Michael Litchard ";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "LDAP Authentication for Yesod.";
      description = "LDAP Authentication for Yesod.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."LDAP" or (errorHandler.buildDepError "LDAP"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."authenticate-ldap" or (errorHandler.buildDepError "authenticate-ldap"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }