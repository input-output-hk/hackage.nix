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
      identifier = { name = "SessionLogger"; version = "0.3.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Gero Kriependorf <gero-dev@physra.net>";
      author = "Gero Kriependorf <gero-dev@physra.net>";
      homepage = "";
      url = "";
      synopsis = "Easy Loggingframework";
      description = "Logger is a framework for making logging, especially web\nrequest, easy. It supports a special file hierachy where\nevery request has its own directory with a main log file\nand serveral other files worth to log. In addition there\nis a main log file with important messages and an info file\nfor things like performance meassuring. These two files\nare avaliable for each day separately.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }