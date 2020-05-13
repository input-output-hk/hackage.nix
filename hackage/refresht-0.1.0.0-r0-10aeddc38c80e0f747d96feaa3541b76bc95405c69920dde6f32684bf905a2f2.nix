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
      identifier = { name = "refresht"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/refresht#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."refresht" or (errorHandler.buildDepError "refresht"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            ];
          buildable = false;
          };
        };
      };
    }