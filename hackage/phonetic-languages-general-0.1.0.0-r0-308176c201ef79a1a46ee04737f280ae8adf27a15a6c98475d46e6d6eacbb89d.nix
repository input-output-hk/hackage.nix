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
        name = "phonetic-languages-general";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2020 Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/phonetic-languages-general";
      url = "";
      synopsis = "A generalization of the uniqueness-periods-vector-general functionality.";
      description = "Is intended to use more functionality of the Data.Foldable, Data.SubG, Data.Monoid and Data.Vector modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
          (hsPkgs."print-info" or (errorHandler.buildDepError "print-info"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."phonetic-languages-common" or (errorHandler.buildDepError "phonetic-languages-common"))
          (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
        ];
        buildable = true;
      };
    };
  }