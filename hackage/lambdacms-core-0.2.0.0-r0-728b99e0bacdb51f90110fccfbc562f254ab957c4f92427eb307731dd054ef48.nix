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
      specVersion = "1.18";
      identifier = { name = "lambdacms-core"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2014-2015 Hoppinger";
      maintainer = "cies@AT-hoppinger.com";
      author = "Cies Breijs, Mats Rietdijk, Rutger van Aalst";
      homepage = "http://lambdacms.org";
      url = "";
      synopsis = "LambdaCms Core subsite for Yesod apps";
      description = "LambdaCms is a Content Management System (CMS) in Haskell\nusing Yesod.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."friendly-time" or (errorHandler.buildDepError "friendly-time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."gravatar" or (errorHandler.buildDepError "gravatar"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."lists" or (errorHandler.buildDepError "lists"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
        ];
        buildable = true;
      };
    };
  }