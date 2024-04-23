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
        name = "phonetic-languages-simplified-examples-array";
        version = "0.9.0.0";
      };
      license = "MIT";
      copyright = "(c) 2020-2021 Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-simplified-examples-array";
      url = "";
      synopsis = "Helps to create Ukrainian texts with the given phonetic properties.";
      description = "Uses more functionality of the arrays and lists. The vector-related functionality is removed and this made the executables and libraries much more lightweight. Deal the Ukrainian as one of the phonetic languages. For the brief introduction in English, please, refer to: https://functional-art.org/2020/papers/Poetry-OleksandrZhabenko.pdf. Since the version 0.3.0.0 the package has the multiple variations mode for @lineVariantsG3@ executable that allows to use modifications in the text, e. g. synonyms, paraphrases etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
          (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
          (hsPkgs."phonetic-languages-simplified-properties-array" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-array"))
          (hsPkgs."phonetic-languages-ukrainian-array" or (errorHandler.buildDepError "phonetic-languages-ukrainian-array"))
          (hsPkgs."phonetic-languages-filters-array" or (errorHandler.buildDepError "phonetic-languages-filters-array"))
          (hsPkgs."uniqueness-periods-vector-stats" or (errorHandler.buildDepError "uniqueness-periods-vector-stats"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
          (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
          (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
          (hsPkgs."phonetic-languages-permutations-array" or (errorHandler.buildDepError "phonetic-languages-permutations-array"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          (hsPkgs."phonetic-languages-constraints-array" or (errorHandler.buildDepError "phonetic-languages-constraints-array"))
          (hsPkgs."phonetic-languages-simplified-examples-common" or (errorHandler.buildDepError "phonetic-languages-simplified-examples-common"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."string-interpreter" or (errorHandler.buildDepError "string-interpreter"))
        ];
        buildable = true;
      };
      exes = {
        "lineVariantsG3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
            (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
            (hsPkgs."phonetic-languages-simplified-properties-array" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-array"))
            (hsPkgs."phonetic-languages-ukrainian-array" or (errorHandler.buildDepError "phonetic-languages-ukrainian-array"))
            (hsPkgs."phonetic-languages-filters-array" or (errorHandler.buildDepError "phonetic-languages-filters-array"))
            (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
            (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
            (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
            (hsPkgs."phonetic-languages-constraints-array" or (errorHandler.buildDepError "phonetic-languages-constraints-array"))
            (hsPkgs."phonetic-languages-permutations-array" or (errorHandler.buildDepError "phonetic-languages-permutations-array"))
            (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
            (hsPkgs."phonetic-languages-simplified-examples-common" or (errorHandler.buildDepError "phonetic-languages-simplified-examples-common"))
            (hsPkgs."string-interpreter" or (errorHandler.buildDepError "string-interpreter"))
          ];
          buildable = true;
        };
        "rewritePoemG3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
            (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
            (hsPkgs."phonetic-languages-simplified-properties-array" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-array"))
            (hsPkgs."phonetic-languages-ukrainian-array" or (errorHandler.buildDepError "phonetic-languages-ukrainian-array"))
            (hsPkgs."phonetic-languages-filters-array" or (errorHandler.buildDepError "phonetic-languages-filters-array"))
            (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
            (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
            (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
            (hsPkgs."phonetic-languages-constraints-array" or (errorHandler.buildDepError "phonetic-languages-constraints-array"))
            (hsPkgs."phonetic-languages-permutations-array" or (errorHandler.buildDepError "phonetic-languages-permutations-array"))
            (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
            (hsPkgs."phonetic-languages-simplified-examples-common" or (errorHandler.buildDepError "phonetic-languages-simplified-examples-common"))
            (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          ];
          buildable = true;
        };
        "propertiesTextG3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
            (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
            (hsPkgs."phonetic-languages-simplified-properties-array" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-array"))
            (hsPkgs."phonetic-languages-ukrainian-array" or (errorHandler.buildDepError "phonetic-languages-ukrainian-array"))
            (hsPkgs."phonetic-languages-filters-array" or (errorHandler.buildDepError "phonetic-languages-filters-array"))
            (hsPkgs."uniqueness-periods-vector-stats" or (errorHandler.buildDepError "uniqueness-periods-vector-stats"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
            (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
            (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
            (hsPkgs."phonetic-languages-permutations-array" or (errorHandler.buildDepError "phonetic-languages-permutations-array"))
            (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
            (hsPkgs."phonetic-languages-constraints-array" or (errorHandler.buildDepError "phonetic-languages-constraints-array"))
            (hsPkgs."phonetic-languages-simplified-examples-common" or (errorHandler.buildDepError "phonetic-languages-simplified-examples-common"))
            (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          ];
          buildable = true;
        };
      };
    };
  }