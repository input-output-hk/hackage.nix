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
      specVersion = "1.6";
      identifier = { name = "yesod-comments"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@pbrisbin.com";
      author = "Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/yesod-comments";
      url = "";
      synopsis = "A generic comments interface for a Yesod application";
      description = "A generic comments interface for a Yesod application";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."friendly-time" or (errorHandler.buildDepError "friendly-time"))
          (hsPkgs."gravatar" or (errorHandler.buildDepError "gravatar"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."yesod-markdown" or (errorHandler.buildDepError "yesod-markdown"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ];
        buildable = true;
        };
      };
    }