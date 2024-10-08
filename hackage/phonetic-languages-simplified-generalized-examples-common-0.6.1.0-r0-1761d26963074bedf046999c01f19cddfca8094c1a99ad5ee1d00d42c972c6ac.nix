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
        name = "phonetic-languages-simplified-generalized-examples-common";
        version = "0.6.1.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko 2020-2023";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-simplified-generalized-examples-common";
      url = "";
      synopsis = "Some common code for phonetic languages generalized functionality.";
      description = "Is intended to be used in the phonetic-languages-simplified-generalized-examples-array package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."phonetic-languages-phonetics-basics" or (errorHandler.buildDepError "phonetic-languages-phonetics-basics"))
          (hsPkgs."phonetic-languages-simplified-generalized-properties-array" or (errorHandler.buildDepError "phonetic-languages-simplified-generalized-properties-array"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
        ];
        buildable = true;
      };
    };
  }