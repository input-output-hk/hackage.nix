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
        name = "phonetic-languages-simplified-generalized-examples-array";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "Oleksndr Zhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-simplified-generalized-examples-array";
      url = "";
      synopsis = "Helps to create texts with the given phonetic properties (e. g. poetic).";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."phonetic-languages-simplified-generalized-examples-common" or (errorHandler.buildDepError "phonetic-languages-simplified-generalized-examples-common"))
          (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
          (hsPkgs."phonetic-languages-simplified-generalized-properties-array" or (errorHandler.buildDepError "phonetic-languages-simplified-generalized-properties-array"))
          (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
          (hsPkgs."phonetic-languages-permutations-array" or (errorHandler.buildDepError "phonetic-languages-permutations-array"))
          (hsPkgs."phonetic-languages-filters-array" or (errorHandler.buildDepError "phonetic-languages-filters-array"))
          (hsPkgs."phonetic-languages-phonetics-basics" or (errorHandler.buildDepError "phonetic-languages-phonetics-basics"))
          (hsPkgs."phonetic-languages-constraints-array" or (errorHandler.buildDepError "phonetic-languages-constraints-array"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."phonetic-languages-plus" or (errorHandler.buildDepError "phonetic-languages-plus"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
        ];
        buildable = true;
      };
    };
  }