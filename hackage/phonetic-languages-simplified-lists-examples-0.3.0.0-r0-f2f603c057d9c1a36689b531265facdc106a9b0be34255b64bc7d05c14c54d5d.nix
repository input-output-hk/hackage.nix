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
        name = "phonetic-languages-simplified-lists-examples";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "(c) 2020 Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-simplified-lists-examples";
      url = "";
      synopsis = "Simplified and somewhat optimized version of the phonetic-languages-examples.";
      description = "Is intended to use more functionality of lists and subG package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."phonetic-languages-simplified-common" or (errorHandler.buildDepError "phonetic-languages-simplified-common"))
          (hsPkgs."phonetic-languages-simplified-properties-lists" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-lists"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
          (hsPkgs."phonetic-languages-constraints" or (errorHandler.buildDepError "phonetic-languages-constraints"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
        ];
        buildable = true;
      };
      exes = {
        "lineVariantsG2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ukrainian-phonetics-basic" or (errorHandler.buildDepError "ukrainian-phonetics-basic"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phonetic-languages-simplified-common" or (errorHandler.buildDepError "phonetic-languages-simplified-common"))
            (hsPkgs."phonetic-languages-simplified-properties-lists" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-lists"))
            (hsPkgs."print-info" or (errorHandler.buildDepError "print-info"))
            (hsPkgs."phonetic-languages-ukrainian" or (errorHandler.buildDepError "phonetic-languages-ukrainian"))
            (hsPkgs."uniqueness-periods-vector-filters" or (errorHandler.buildDepError "uniqueness-periods-vector-filters"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
            (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."phonetic-languages-constraints" or (errorHandler.buildDepError "phonetic-languages-constraints"))
            (hsPkgs."phonetic-languages-permutations" or (errorHandler.buildDepError "phonetic-languages-permutations"))
            (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          ];
          buildable = true;
        };
        "rewritePoemG2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ukrainian-phonetics-basic" or (errorHandler.buildDepError "ukrainian-phonetics-basic"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phonetic-languages-simplified-common" or (errorHandler.buildDepError "phonetic-languages-simplified-common"))
            (hsPkgs."phonetic-languages-simplified-properties-lists" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-lists"))
            (hsPkgs."print-info" or (errorHandler.buildDepError "print-info"))
            (hsPkgs."phonetic-languages-ukrainian" or (errorHandler.buildDepError "phonetic-languages-ukrainian"))
            (hsPkgs."uniqueness-periods-vector-filters" or (errorHandler.buildDepError "uniqueness-periods-vector-filters"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
            (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
            (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."phonetic-languages-constraints" or (errorHandler.buildDepError "phonetic-languages-constraints"))
            (hsPkgs."phonetic-languages-permutations" or (errorHandler.buildDepError "phonetic-languages-permutations"))
            (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          ];
          buildable = true;
        };
        "propertiesTextG2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ukrainian-phonetics-basic" or (errorHandler.buildDepError "ukrainian-phonetics-basic"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phonetic-languages-simplified-common" or (errorHandler.buildDepError "phonetic-languages-simplified-common"))
            (hsPkgs."phonetic-languages-simplified-properties-lists" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-lists"))
            (hsPkgs."phonetic-languages-ukrainian" or (errorHandler.buildDepError "phonetic-languages-ukrainian"))
            (hsPkgs."uniqueness-periods-vector-filters" or (errorHandler.buildDepError "uniqueness-periods-vector-filters"))
            (hsPkgs."uniqueness-periods-vector-stats" or (errorHandler.buildDepError "uniqueness-periods-vector-stats"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
            (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
            (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
            (hsPkgs."phonetic-languages-permutations" or (errorHandler.buildDepError "phonetic-languages-permutations"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          ];
          buildable = true;
        };
      };
    };
  }