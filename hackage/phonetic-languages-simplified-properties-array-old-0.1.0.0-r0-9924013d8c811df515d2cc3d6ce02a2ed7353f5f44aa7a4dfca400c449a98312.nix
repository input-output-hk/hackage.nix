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
        name = "phonetic-languages-simplified-properties-array-old";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-simplified-properties-array-old";
      url = "";
      synopsis = "Some properties of the data related to rhythmicity.";
      description = "Are taken from the phonetic-languages-simplified-properties-array to provide the old functionality (for compatibility). If possible, use the phonetic-languages-simplified-properties-array instead.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
          (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
          (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
          (hsPkgs."phonetic-languages-basis" or (errorHandler.buildDepError "phonetic-languages-basis"))
          (hsPkgs."phonetic-languages-simplified-properties-array-common" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-array-common"))
        ];
        buildable = true;
      };
    };
  }