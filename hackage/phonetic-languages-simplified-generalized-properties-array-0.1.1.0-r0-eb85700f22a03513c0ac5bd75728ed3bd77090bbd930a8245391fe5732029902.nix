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
        version = "0.1.1.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-simplified-generalized-properties-array";
      url = "";
      synopsis = "Generalization of the functionality of the phonetic-languages-simplified-properties-array.";
      description = "Is intended to be used with the general phonetic languages approach. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
          (hsPkgs."phonetic-languages-rhythmicity" or (errorHandler.buildDepError "phonetic-languages-rhythmicity"))
          (hsPkgs."phonetic-languages-phonetics-basics" or (errorHandler.buildDepError "phonetic-languages-phonetics-basics"))
          ];
        buildable = true;
        };
      };
    }