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
        name = "uniqueness-periods-vector-general";
        version = "0.4.2.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/uniqueness-periods-vector-general";
      url = "";
      synopsis = "Generalization of the functionality of the dobutokO-poetry-general-languages package";
      description = "Generalization of the functionality of the dobutokO-poetry-general-languages package";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."uniqueness-periods-vector-common" or (errorHandler.buildDepError "uniqueness-periods-vector-common"))
          (hsPkgs."print-info" or (errorHandler.buildDepError "print-info"))
        ];
        buildable = true;
      };
    };
  }