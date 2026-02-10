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
      specVersion = "1.10";
      identifier = { name = "templates"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "galen.sprout@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Out of the box reflex-dom elements";
      description = "Out of the box reflex-dom elements built with ClasshSS and reflex-classhss";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ClasshSS" or (errorHandler.buildDepError "ClasshSS"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."reflex-classhss" or (errorHandler.buildDepError "reflex-classhss"))
          (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }