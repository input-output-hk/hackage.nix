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
        name = "phonetic-languages-simplified-examples-common";
        version = "0.5.1.0";
      };
      license = "MIT";
      copyright = "(c) 2020-2022 Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-simplified-examples-common";
      url = "";
      synopsis = "Some commonly used by phonetic-languages-simplified* series functions.";
      description = "Are intended to be used by the phonetic-languages-simplified-lists-examples and phonetic-languages-simplified-examples-array packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          (hsPkgs."phonetic-languages-ukrainian-array" or (errorHandler.buildDepError "phonetic-languages-ukrainian-array"))
          (hsPkgs."phonetic-languages-simplified-properties-array" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-array"))
          (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
        ];
        buildable = true;
      };
    };
  }