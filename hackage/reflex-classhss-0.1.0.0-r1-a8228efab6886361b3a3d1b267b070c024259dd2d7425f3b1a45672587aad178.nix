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
      specVersion = "2.4";
      identifier = { name = "reflex-classhss"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "galen.sprout@gmail.com";
      author = "Galen Sprout";
      homepage = "https://github.com/augyg/ClasshSS";
      url = "";
      synopsis = "ClasshSS defined element builders for Reflex";
      description = "Using ClasshSS this module provides a number of interfaces to rapidly build UIs,\nin particular there is a focus on text and layouts";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ClasshSS" or (errorHandler.buildDepError "ClasshSS"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."reflex-dom-core" or (errorHandler.buildDepError "reflex-dom-core"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }