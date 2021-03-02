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
      specVersion = "1.12";
      identifier = { name = "yesod-auth-pam"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kazuo Koga <obiwanko@me.com>";
      author = "Kazuo Koga <obiwanko@me.com>";
      homepage = "";
      url = "";
      synopsis = "Provides PAM authentication module";
      description = "Provides PAM authentication module that simply\nlets a user specify his/her identifier.\n\nThis is not intended for real world use,\njust for private network.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."pam" or (errorHandler.buildDepError "pam"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          ];
        buildable = true;
        };
      };
    }