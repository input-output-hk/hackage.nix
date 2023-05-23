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
        name = "phonetic-languages-constraints-array";
        version = "0.6.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-constraints-array";
      url = "";
      synopsis = "Constraints to filter the needed permutations";
      description = "Provides several the most important variants of constraints. Can be used with the phonetic-languages-common series of package. Instead of vectors, uses arrays.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
          ];
        buildable = true;
        };
      };
    }