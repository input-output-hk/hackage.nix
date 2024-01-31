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
        name = "phonetic-languages-phonetics-basics";
        version = "0.11.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-phonetics-basics";
      url = "";
      synopsis = "A library for working with generalized phonetic languages usage.";
      description = "There already exists a Ukrainian implementation for the phonetic languages approach published at: https://hackage.haskell.org/package/phonetic-languages-simplified-examples-array and PhLADiPreLiO implementation with newer ideas also for Ukrainian published at: https://hackage.haskell.org/package/phladiprelio-ukrainian-simple. They are optimized for the Ukrainian only and much of their functionalities need to be rewritten for every new language mostly from scratch using them as templates. To avoid this boilerplate, this one is provided. It can be used for different languages and even for music or other fields. Now it combines the functionality of the @r-glpk-phonetic-languages-ukrainian-durations@ and @phonetic-languages-ukrainian-array@ and some dependencies of the mentioned ones.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."intermediate-structures" or (errorHandler.buildDepError "intermediate-structures"))
          (hsPkgs."lists-flines" or (errorHandler.buildDepError "lists-flines"))
          ];
        buildable = true;
        };
      exes = {
        "pldPL" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
            (hsPkgs."intermediate-structures" or (errorHandler.buildDepError "intermediate-structures"))
            (hsPkgs."lists-flines" or (errorHandler.buildDepError "lists-flines"))
            ];
          buildable = true;
          };
        };
      };
    }