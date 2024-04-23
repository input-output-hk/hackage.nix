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
      identifier = { name = "fcf-composite"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Daniel Firth";
      maintainer = "dan.firth@homtopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Type-level computation for composite using first-class-families.";
      description = "Type-level computation for composite using first-class-families.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."fcf-containers" or (errorHandler.buildDepError "fcf-containers"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
        ];
        buildable = true;
      };
    };
  }