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
      identifier = { name = "hsmtpclient"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Massimo Zaniboni <massimo.zaniboni@gmail.com>";
      author = "Massimo Zaniboni <massimo.zaniboni@gmail.com>";
      homepage = "http://code.google.com/p/hsmtpclient/";
      url = "";
      synopsis = "Simple SMTP Client";
      description = "A very simple SMTP Client library for sending emails.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }