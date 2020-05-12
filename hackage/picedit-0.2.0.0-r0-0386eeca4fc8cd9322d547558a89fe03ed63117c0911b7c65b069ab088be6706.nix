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
      identifier = { name = "picedit"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2016 Mahdi Dibaiee";
      maintainer = "mdibaiee@aol.com";
      author = "Mahdi Dibaiee";
      homepage = "https://github.com/mdibaiee/picedit#readme";
      url = "";
      synopsis = "simple image manipulation functions";
      description = "Simple set of functions for image manipulation: contrast, brightnesss, rotation, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "picedit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."picedit" or (errorHandler.buildDepError "picedit"))
            (hsPkgs."cli" or (errorHandler.buildDepError "cli"))
            ];
          buildable = true;
          };
        };
      };
    }