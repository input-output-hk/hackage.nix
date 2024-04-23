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
      identifier = { name = "yesod-auth-oauth"; version = "1.6.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Litchard";
      author = "Hiromi Ishii";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "OAuth Authentication for Yesod.";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-auth-oauth>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."authenticate-oauth" or (errorHandler.buildDepError "authenticate-oauth"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
        ];
        buildable = true;
      };
    };
  }