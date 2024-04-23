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
      specVersion = "1.4";
      identifier = {
        name = "hinduce-classifier-decisiontree";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hackage@roberthensing.nl";
      author = "Robert Hensing";
      homepage = "https://github.com/roberth/hinduce-classifier-decisiontree#readme";
      url = "";
      synopsis = "Decision Tree Classifiers for hInduce";
      description = "A very simple decision tree construction algorithm; an implementation of @hinduce-classifier@'s @Classifier@ class.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."layout" or (errorHandler.buildDepError "layout"))
          (hsPkgs."hinduce-missingh" or (errorHandler.buildDepError "hinduce-missingh"))
          (hsPkgs."hinduce-classifier" or (errorHandler.buildDepError "hinduce-classifier"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
        ];
        buildable = true;
      };
    };
  }