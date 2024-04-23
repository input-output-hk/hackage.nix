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
        name = "uniqueness-periods-vector-examples";
        version = "0.8.0.3";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/uniqueness-periods-vector-examples";
      url = "";
      synopsis = "Usage examples for the uniqueness-periods-vector series of packages";
      description = "Usage examples for the uniqueness-periods-vector series of packages. Several executables are planned to demonstrate the libraries work.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lineVariants" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."uniqueness-periods-vector" or (errorHandler.buildDepError "uniqueness-periods-vector"))
            (hsPkgs."uniqueness-periods-vector-general" or (errorHandler.buildDepError "uniqueness-periods-vector-general"))
            (hsPkgs."uniqueness-periods-vector-common" or (errorHandler.buildDepError "uniqueness-periods-vector-common"))
            (hsPkgs."uniqueness-periods-vector-properties" or (errorHandler.buildDepError "uniqueness-periods-vector-properties"))
            (hsPkgs."print-info" or (errorHandler.buildDepError "print-info"))
            (hsPkgs."phonetic-languages-ukrainian" or (errorHandler.buildDepError "phonetic-languages-ukrainian"))
          ];
          buildable = true;
        };
        "rewritePoem" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."uniqueness-periods-vector" or (errorHandler.buildDepError "uniqueness-periods-vector"))
            (hsPkgs."uniqueness-periods-vector-general" or (errorHandler.buildDepError "uniqueness-periods-vector-general"))
            (hsPkgs."uniqueness-periods-vector-common" or (errorHandler.buildDepError "uniqueness-periods-vector-common"))
            (hsPkgs."uniqueness-periods-vector-properties" or (errorHandler.buildDepError "uniqueness-periods-vector-properties"))
            (hsPkgs."print-info" or (errorHandler.buildDepError "print-info"))
            (hsPkgs."phonetic-languages-ukrainian" or (errorHandler.buildDepError "phonetic-languages-ukrainian"))
          ];
          buildable = true;
        };
        "processText" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmsyn6ukr" or (errorHandler.buildDepError "mmsyn6ukr"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."uniqueness-periods-vector" or (errorHandler.buildDepError "uniqueness-periods-vector"))
            (hsPkgs."uniqueness-periods-vector-general" or (errorHandler.buildDepError "uniqueness-periods-vector-general"))
            (hsPkgs."uniqueness-periods-vector-common" or (errorHandler.buildDepError "uniqueness-periods-vector-common"))
            (hsPkgs."uniqueness-periods-vector-properties" or (errorHandler.buildDepError "uniqueness-periods-vector-properties"))
            (hsPkgs."print-info" or (errorHandler.buildDepError "print-info"))
            (hsPkgs."phonetic-languages-ukrainian" or (errorHandler.buildDepError "phonetic-languages-ukrainian"))
            (hsPkgs."uniqueness-periods-vector-filters" or (errorHandler.buildDepError "uniqueness-periods-vector-filters"))
            (hsPkgs."uniqueness-periods-vector-stats" or (errorHandler.buildDepError "uniqueness-periods-vector-stats"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."lists-flines" or (errorHandler.buildDepError "lists-flines"))
          ];
          buildable = true;
        };
      };
    };
  }