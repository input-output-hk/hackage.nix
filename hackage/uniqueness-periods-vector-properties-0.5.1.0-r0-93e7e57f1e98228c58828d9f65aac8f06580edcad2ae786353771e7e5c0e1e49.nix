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
        name = "uniqueness-periods-vector-properties";
        version = "0.5.1.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/uniqueness-periods-vector-properties";
      url = "";
      synopsis = "Metrices for the maximum element for the uniqueness-periods-vector packages family.";
      description = "Metrices for the maximum element for the uniqueness-periods-vector packages family. Generalization of the DobutokO.Poetry.Norms and DobutokO.Poetry.Norms.Extended modules from dobutokO-poetry package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."uniqueness-periods-vector" or (errorHandler.buildDepError "uniqueness-periods-vector"))
          (hsPkgs."mmsyn7s" or (errorHandler.buildDepError "mmsyn7s"))
          (hsPkgs."uniqueness-periods-vector-common" or (errorHandler.buildDepError "uniqueness-periods-vector-common"))
          (hsPkgs."phonetic-languages-ukrainian" or (errorHandler.buildDepError "phonetic-languages-ukrainian"))
          (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
          (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
        ];
        buildable = true;
      };
    };
  }