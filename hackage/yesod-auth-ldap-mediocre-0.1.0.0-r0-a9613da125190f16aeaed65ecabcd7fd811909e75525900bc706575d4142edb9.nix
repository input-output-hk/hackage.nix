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
      identifier = { name = "yesod-auth-ldap-mediocre"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Very simlple LDAP auth for yesod";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."LDAP" or (errorHandler.buildDepError "LDAP"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }