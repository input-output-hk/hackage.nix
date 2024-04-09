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
      identifier = {
        name = "phladiprelio-ukrainian-shared";
        version = "0.5.0.1";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "";
      url = "";
      synopsis = "A shared by different Ukrainian implementations of the PhLADiPreLiO functionality.";
      description = "Is intended to be used by both old phonetic-languages-simplified-examples-array and new phladiprelio-ukrainian-simple packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
          (hsPkgs."phladiprelio-general-datatype" or (errorHandler.buildDepError "phladiprelio-general-datatype"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          ];
        buildable = true;
        };
      };
    }