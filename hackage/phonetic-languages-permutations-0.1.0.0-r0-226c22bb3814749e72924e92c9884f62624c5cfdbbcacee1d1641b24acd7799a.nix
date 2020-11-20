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
        name = "phonetic-languages-permutations";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-permutations";
      url = "";
      synopsis = "Commonly used versions of the phonetic-languages-common package";
      description = "Permutations-related to produce universal set of the task.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
          (hsPkgs."subG-instances" or (errorHandler.buildDepError "subG-instances"))
          ];
        buildable = true;
        };
      };
    }