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
        name = "phonetic-languages-filters-array";
        version = "0.3.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-filters-array";
      url = "";
      synopsis = "Allows to change the structure of the function output.";
      description = "Allows to change the structure of the function output for the data types that have instances of the RealFrac class. Is rewritten from the predecessor uniqueness-periods-vector-filters package. Since the 0.2.0.0 version uses hashtables (because of using Case.Hashable.Cuckoo.getBFstL' function).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filters-basic" or (errorHandler.buildDepError "filters-basic"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          ];
        buildable = true;
        };
      };
    }