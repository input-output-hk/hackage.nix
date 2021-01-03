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
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "(c) 2020-2021 Oleksandr Zhabenko";
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
          (hsPkgs."phonetic-languages-simplified-common" or (errorHandler.buildDepError "phonetic-languages-simplified-common"))
          (hsPkgs."phonetic-languages-simplified-properties-lists-double" or (errorHandler.buildDepError "phonetic-languages-simplified-properties-lists-double"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."phonetic-languages-constraints-array" or (errorHandler.buildDepError "phonetic-languages-constraints-array"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
          (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
          (hsPkgs."phonetic-languages-ukrainian-array" or (errorHandler.buildDepError "phonetic-languages-ukrainian-array"))
          (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
          ];
        buildable = true;
        };
      };
    }