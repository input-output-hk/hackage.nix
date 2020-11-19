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
        name = "phonetic-languages-examples";
        version = "0.6.1.0";
        };
      license = "MIT";
      copyright = "(c) 2020 Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-examples";
      url = "";
      synopsis = "A generalization of the uniqueness-periods-vector-examples functionality.";
      description = "Is intended to use more functionality of the Data.Vector, Data.Foldable, Data.Monoid and Data.SubG modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."phonetic-languages-vector" or (errorHandler.buildDepError "phonetic-languages-vector"))
          (hsPkgs."phonetic-languages-common" or (errorHandler.buildDepError "phonetic-languages-common"))
          (hsPkgs."phonetic-languages-properties" or (errorHandler.buildDepError "phonetic-languages-properties"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
          (hsPkgs."phonetic-languages-constraints" or (errorHandler.buildDepError "phonetic-languages-constraints"))
          ];
        buildable = true;
        };
      exes = {
        "lineVariantsG" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ukrainian-phonetics-basic" or (errorHandler.buildDepError "ukrainian-phonetics-basic"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phonetic-languages-vector" or (errorHandler.buildDepError "phonetic-languages-vector"))
            (hsPkgs."phonetic-languages-general" or (errorHandler.buildDepError "phonetic-languages-general"))
            (hsPkgs."phonetic-languages-common" or (errorHandler.buildDepError "phonetic-languages-common"))
            (hsPkgs."phonetic-languages-properties" or (errorHandler.buildDepError "phonetic-languages-properties"))
            (hsPkgs."print-info" or (errorHandler.buildDepError "print-info"))
            (hsPkgs."phonetic-languages-ukrainian" or (errorHandler.buildDepError "phonetic-languages-ukrainian"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."uniqueness-periods-vector-filters" or (errorHandler.buildDepError "uniqueness-periods-vector-filters"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
            (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."phonetic-languages-constraints" or (errorHandler.buildDepError "phonetic-languages-constraints"))
            ];
          buildable = true;
          };
        "rewritePoemG" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ukrainian-phonetics-basic" or (errorHandler.buildDepError "ukrainian-phonetics-basic"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phonetic-languages-vector" or (errorHandler.buildDepError "phonetic-languages-vector"))
            (hsPkgs."phonetic-languages-general" or (errorHandler.buildDepError "phonetic-languages-general"))
            (hsPkgs."phonetic-languages-common" or (errorHandler.buildDepError "phonetic-languages-common"))
            (hsPkgs."phonetic-languages-properties" or (errorHandler.buildDepError "phonetic-languages-properties"))
            (hsPkgs."print-info" or (errorHandler.buildDepError "print-info"))
            (hsPkgs."phonetic-languages-ukrainian" or (errorHandler.buildDepError "phonetic-languages-ukrainian"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."uniqueness-periods-vector-filters" or (errorHandler.buildDepError "uniqueness-periods-vector-filters"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
            (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
            (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."phonetic-languages-constraints" or (errorHandler.buildDepError "phonetic-languages-constraints"))
            ];
          buildable = true;
          };
        "propertiesTextG" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ukrainian-phonetics-basic" or (errorHandler.buildDepError "ukrainian-phonetics-basic"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phonetic-languages-vector" or (errorHandler.buildDepError "phonetic-languages-vector"))
            (hsPkgs."phonetic-languages-general" or (errorHandler.buildDepError "phonetic-languages-general"))
            (hsPkgs."phonetic-languages-common" or (errorHandler.buildDepError "phonetic-languages-common"))
            (hsPkgs."phonetic-languages-properties" or (errorHandler.buildDepError "phonetic-languages-properties"))
            (hsPkgs."phonetic-languages-ukrainian" or (errorHandler.buildDepError "phonetic-languages-ukrainian"))
            (hsPkgs."uniqueness-periods-vector-filters" or (errorHandler.buildDepError "uniqueness-periods-vector-filters"))
            (hsPkgs."uniqueness-periods-vector-stats" or (errorHandler.buildDepError "uniqueness-periods-vector-stats"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
            (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
            (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."phonetic-languages-constraints" or (errorHandler.buildDepError "phonetic-languages-constraints"))
            ];
          buildable = true;
          };
        };
      };
    }