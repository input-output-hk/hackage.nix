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
      identifier = { name = "phonetic-languages-common"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "(c) 2020 Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-common";
      url = "";
      synopsis = "A generalization of the uniqueness-periods-vector-common package.";
      description = "Is intended to use more Data.Vector, Data.Foldable and Data.Monoid functionality.";
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