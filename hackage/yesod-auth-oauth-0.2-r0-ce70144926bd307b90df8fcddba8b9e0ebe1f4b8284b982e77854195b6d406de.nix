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
      specVersion = "1.2";
      identifier = { name = "yesod-auth-oauth"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "OAuth wrapper for yesod-auth";
      description = "General OAuth interface for yesod-auth.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hoauth" or (errorHandler.buildDepError "hoauth"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          ];
        buildable = true;
        };
      };
    }