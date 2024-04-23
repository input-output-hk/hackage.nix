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
        name = "uniqueness-periods-general";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/uniqueness-periods-general";
      url = "";
      synopsis = "Can be used to produce the similar to 'String.Ukrainian.UniquenessPeriods' functions.";
      description = "Can be used to produce the similar to 'String.Ukrainian.UniquenessPeriods' from uniqueness-periods package functions. Provides the generalization of them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }