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
      identifier = { name = "simplenote"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 marius a. eriksen";
      maintainer = "marius a. eriksen";
      author = "marius a. eriksen";
      homepage = "";
      url = "";
      synopsis = "Haskell interface for the simplenote API.";
      description = "Provides a simple Haskell API to the simplenote web\nservices.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."download-curl" or (errorHandler.buildDepError "download-curl"))
          (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ];
        buildable = true;
        };
      };
    }