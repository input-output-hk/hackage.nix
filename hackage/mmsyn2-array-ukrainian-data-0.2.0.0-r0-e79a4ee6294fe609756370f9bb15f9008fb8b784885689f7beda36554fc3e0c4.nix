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
      identifier = {
        name = "mmsyn2-array-ukrainian-data";
        version = "0.2.0.0";
        };
      license = "MIT";
      copyright = "2022-2023 Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "";
      url = "";
      synopsis = "Data that is taken from the ukrainian-phonetics-basic-array for optimization.";
      description = "Is intended to be used in the phonetic-languages-simplified-examples-array functionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }