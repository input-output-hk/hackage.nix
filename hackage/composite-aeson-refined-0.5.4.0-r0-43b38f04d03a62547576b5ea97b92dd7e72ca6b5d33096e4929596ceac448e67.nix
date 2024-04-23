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
      identifier = { name = "composite-aeson-refined"; version = "0.5.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.health";
      author = "Confer Health, Inc";
      homepage = "https://github.com/ConferHealth/composite#readme";
      url = "";
      synopsis = "composite-aeson support for Refined from the refined package";
      description = "JsonFormat and DefaultJsonFormat for Refined";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson-better-errors" or (errorHandler.buildDepError "aeson-better-errors"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composite-aeson" or (errorHandler.buildDepError "composite-aeson"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
        ];
        buildable = true;
      };
    };
  }