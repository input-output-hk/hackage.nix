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
        name = "phonetic-languages-permutations-array";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-permutations-array";
      url = "";
      synopsis = "Permutations and universal set related functions for the phonetic-languages series";
      description = "Permutations-related to produce universal set of the task. Uses arrays instead of vectors.";
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