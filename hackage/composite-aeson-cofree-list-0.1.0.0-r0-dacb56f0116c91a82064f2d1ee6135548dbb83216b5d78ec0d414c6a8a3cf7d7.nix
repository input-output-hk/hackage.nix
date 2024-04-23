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
      identifier = {
        name = "composite-aeson-cofree-list";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Print a Cofree [] as a JSON value.";
      description = "Print a Cofree [] as a JSON value.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composite-aeson" or (errorHandler.buildDepError "composite-aeson"))
          (hsPkgs."composite-aeson-writeonly" or (errorHandler.buildDepError "composite-aeson-writeonly"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }