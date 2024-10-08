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
      identifier = { name = "svm"; version = "1.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrew Dougherty";
      author = "Andrew Dougherty";
      homepage = "http://github.com/andrewdougherty/svm";
      url = "";
      synopsis = "A support vector machine written in Haskell";
      description = "svm is a library which implements least squares support\nvector regression.  It includes several common kernel\nfunctions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }