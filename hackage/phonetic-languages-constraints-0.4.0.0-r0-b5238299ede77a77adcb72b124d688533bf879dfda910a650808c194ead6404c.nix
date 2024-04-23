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
        name = "phonetic-languages-constraints";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-constraints";
      url = "";
      synopsis = "Constraints to filter the needed permutations";
      description = "Provides several the most important variants of constraints. Can be used with the phonetic-languages-common series of package.";
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