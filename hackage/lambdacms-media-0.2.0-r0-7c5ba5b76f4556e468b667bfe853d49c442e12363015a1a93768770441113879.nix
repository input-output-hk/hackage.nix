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
      identifier = { name = "lambdacms-media"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2014-2015 Hoppinger BV";
      maintainer = "mats@AT-hoppinger.com";
      author = "Mats Rietdijk, Cies Breijs";
      homepage = "http://lambdacms.org";
      url = "";
      synopsis = "LambdaCms \"media\" extension";
      description = "LambdaCms is a Content Management System (CMS) in Haskell\nusing Yesod. This package contains the \"media\" extension.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."lambdacms-core" or (errorHandler.buildDepError "lambdacms-core"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
        ];
        buildable = true;
      };
    };
  }