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
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko 2020-2021";
      maintainer = "olexandr543@yahoo.com";
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
          (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
          (hsPkgs."phonetic-languages-phonetics-basics" or (errorHandler.buildDepError "phonetic-languages-phonetics-basics"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
        ];
        buildable = true;
      };
    };
  }