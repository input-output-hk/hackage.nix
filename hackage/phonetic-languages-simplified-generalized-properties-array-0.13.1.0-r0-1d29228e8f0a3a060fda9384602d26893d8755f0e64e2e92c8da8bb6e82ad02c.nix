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
        name = "phonetic-languages-simplified-generalized-properties-array";
        version = "0.13.1.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-simplified-generalized-properties-array";
      url = "";
      synopsis = "Some 'properties' of the phonetic languages approach text.";
      description = "Generalizes the functionality of the https://hackage.haskell.org/package/phonetic-languages-simplified-properties-array";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."phonetic-languages-basis" or (errorHandler.buildDepError "phonetic-languages-basis"))
          (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
          (hsPkgs."phladiprelio-rhythmicity-shared" or (errorHandler.buildDepError "phladiprelio-rhythmicity-shared"))
          (hsPkgs."phonetic-languages-phonetics-basics" or (errorHandler.buildDepError "phonetic-languages-phonetics-basics"))
          (hsPkgs."lists-flines" or (errorHandler.buildDepError "lists-flines"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."logical-constraints" or (errorHandler.buildDepError "logical-constraints"))
        ];
        buildable = true;
      };
    };
  }