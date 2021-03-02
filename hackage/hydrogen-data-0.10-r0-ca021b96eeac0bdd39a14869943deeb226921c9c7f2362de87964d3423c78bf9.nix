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
      specVersion = "1.12";
      identifier = { name = "hydrogen-data"; version = "0.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-data/";
      url = "";
      synopsis = "Hydrogen Data";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hydrogen-prelude" or (errorHandler.buildDepError "hydrogen-prelude"))
          (hsPkgs."hydrogen-parsing" or (errorHandler.buildDepError "hydrogen-parsing"))
          (hsPkgs."hydrogen-syntax" or (errorHandler.buildDepError "hydrogen-syntax"))
          (hsPkgs."nicify" or (errorHandler.buildDepError "nicify"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }