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
      specVersion = "2.4";
      identifier = {
        name = "phladiprelio-ukrainian-simple";
        version = "0.15.2.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "";
      url = "";
      synopsis = "A PhLADiPreLiO implementation for Ukrainian that uses hashes and asynchronous concurrency.";
      description = "It is another project that is based on the similar ideas as [phonetic-languages-simplified-examples-array package](https://hackage.haskell.org/package/phonetic-languages-simplified-examples-array). For actual usage ideas see the documentation by the links [English draft paper](https://www.academia.edu/105067761/Why_some_lines_are_easy_to_pronounce_and_others_are_not_or_prosodic_unpredictability_as_a_characteristic_of_text) and [Ukrainian draft paper](https://www.academia.edu/105067723/%D0%A7%D0%BE%D0%BC%D1%83_%D0%B4%D0%B5%D1%8F%D0%BA%D1%96_%D1%80%D1%8F%D0%B4%D0%BA%D0%B8_%D0%BB%D0%B5%D0%B3%D0%BA%D0%BE_%D0%B2%D0%B8%D0%BC%D0%BE%D0%B2%D0%BB%D1%8F%D1%82%D0%B8_%D0%B0_%D1%96%D0%BD%D1%88%D1%96_%D0%BD%D1%96_%D0%B0%D0%B1%D0%BE_%D0%BF%D1%80%D0%BE%D1%81%D0%BE%D0%B4%D0%B8%D1%87%D0%BD%D0%B0_%D0%BD%D0%B5%D1%81%D0%BF%D1%80%D0%BE%D0%B3%D0%BD%D0%BE%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D1%96%D1%81%D1%82%D1%8C_%D1%8F%D0%BA_%D1%85%D0%B0%D1%80%D0%B0%D0%BA%D1%82%D0%B5%D1%80%D0%B8%D1%81%D1%82%D0%B8%D0%BA%D0%B0_%D1%82%D0%B5%D0%BA%D1%81%D1%82%D1%83)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rhythmic-sequences" or (errorHandler.buildDepError "rhythmic-sequences"))
          (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
          (hsPkgs."phonetic-languages-ukrainian-array" or (errorHandler.buildDepError "phonetic-languages-ukrainian-array"))
          (hsPkgs."phladiprelio-ukrainian-shared" or (errorHandler.buildDepError "phladiprelio-ukrainian-shared"))
          (hsPkgs."cli-arguments" or (errorHandler.buildDepError "cli-arguments"))
          (hsPkgs."phonetic-languages-permutations-array" or (errorHandler.buildDepError "phonetic-languages-permutations-array"))
          (hsPkgs."phonetic-languages-constraints-array" or (errorHandler.buildDepError "phonetic-languages-constraints-array"))
          (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
          (hsPkgs."halfsplit" or (errorHandler.buildDepError "halfsplit"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."rev-scientific" or (errorHandler.buildDepError "rev-scientific"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."phladiprelio-tests" or (errorHandler.buildDepError "phladiprelio-tests"))
          (hsPkgs."phladiprelio-general-datatype" or (errorHandler.buildDepError "phladiprelio-general-datatype"))
          (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
          (hsPkgs."phonetic-languages-basis" or (errorHandler.buildDepError "phonetic-languages-basis"))
          ];
        buildable = true;
        };
      exes = {
        "phladiprelioUkr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rhythmic-sequences" or (errorHandler.buildDepError "rhythmic-sequences"))
            (hsPkgs."ukrainian-phonetics-basic-array" or (errorHandler.buildDepError "ukrainian-phonetics-basic-array"))
            (hsPkgs."phonetic-languages-ukrainian-array" or (errorHandler.buildDepError "phonetic-languages-ukrainian-array"))
            (hsPkgs."phladiprelio-ukrainian-shared" or (errorHandler.buildDepError "phladiprelio-ukrainian-shared"))
            (hsPkgs."cli-arguments" or (errorHandler.buildDepError "cli-arguments"))
            (hsPkgs."phonetic-languages-permutations-array" or (errorHandler.buildDepError "phonetic-languages-permutations-array"))
            (hsPkgs."phonetic-languages-constraints-array" or (errorHandler.buildDepError "phonetic-languages-constraints-array"))
            (hsPkgs."phonetic-languages-simplified-base" or (errorHandler.buildDepError "phonetic-languages-simplified-base"))
            (hsPkgs."halfsplit" or (errorHandler.buildDepError "halfsplit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."rev-scientific" or (errorHandler.buildDepError "rev-scientific"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."phladiprelio-tests" or (errorHandler.buildDepError "phladiprelio-tests"))
            (hsPkgs."phladiprelio-general-datatype" or (errorHandler.buildDepError "phladiprelio-general-datatype"))
            (hsPkgs."mmsyn2-array" or (errorHandler.buildDepError "mmsyn2-array"))
            (hsPkgs."phonetic-languages-basis" or (errorHandler.buildDepError "phonetic-languages-basis"))
            ];
          buildable = true;
          };
        };
      };
    }