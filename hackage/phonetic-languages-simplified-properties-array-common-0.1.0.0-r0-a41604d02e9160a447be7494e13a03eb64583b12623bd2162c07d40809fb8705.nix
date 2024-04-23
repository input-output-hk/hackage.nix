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
        name = "phonetic-languages-simplified-properties-array-common";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-simplified-properties-array-common";
      url = "";
      synopsis = "Common functionality for 'with-tuples' and old version of properties. ";
      description = "The common functionality for phonetic-languages-simplified-properties-array and phonetic-languages-simplified-properties-array-old packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
          (hsPkgs."phonetic-languages-basis" or (errorHandler.buildDepError "phonetic-languages-basis"))
        ];
        buildable = true;
      };
    };
  }