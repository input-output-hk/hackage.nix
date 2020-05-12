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
      specVersion = "1.4.0";
      identifier = { name = "BiobaseInfernal"; version = "0.0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "";
      url = "";
      synopsis = "Infernal CM manipulation";
      description = "This library provides functions to load Infernal covariance\nmodels. Models can be converted from score mode into\nprobability mode. They, too, can be switched into local mode.\nIn additon, Stockholm files can be loaded.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."Biobase" or (errorHandler.buildDepError "Biobase"))
          ];
        buildable = true;
        };
      };
    }