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
        name = "phladiprelio-general-simple";
        version = "0.20.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "";
      url = "";
      synopsis = "A generalized functionality of PhLADiPreLiO for different languages that uses hash algorithms.";
      description = "The basic ideas of PhLADiPreLiO (Phonetic Languages Approach to Discovering Preferred Line Options). The usage ideas are described in the new scientific draft papers: [Ukrainian paper](https://www.academia.edu/105067723/%D0%A7%D0%BE%D0%BC%D1%83_%D0%B4%D0%B5%D1%8F%D0%BA%D1%96_%D1%80%D1%8F%D0%B4%D0%BA%D0%B8_%D0%BB%D0%B5%D0%B3%D0%BA%D0%BE_%D0%B2%D0%B8%D0%BC%D0%BE%D0%B2%D0%BB%D1%8F%D1%82%D0%B8_%D0%B0_%D1%96%D0%BD%D1%88%D1%96_%D0%BD%D1%96_%D0%B0%D0%B1%D0%BE_%D0%BF%D1%80%D0%BE%D1%81%D0%BE%D0%B4%D0%B8%D1%87%D0%BD%D0%B0_%D0%BD%D0%B5%D1%81%D0%BF%D1%80%D0%BE%D0%B3%D0%BD%D0%BE%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D1%96%D1%81%D1%82%D1%8C_%D1%8F%D0%BA_%D1%85%D0%B0%D1%80%D0%B0%D0%BA%D1%82%D0%B5%D1%80%D0%B8%D1%81%D1%82%D0%B8%D0%BA%D0%B0_%D1%82%D0%B5%D0%BA%D1%81%D1%82%D1%83) and [Why some lines are easy to pronounce and others are not, or prosodic unpredictability as a characteristic of text](https://www.academia.edu/105067761/Why_some_lines_are_easy_to_pronounce_and_others_are_not_or_prosodic_unpredictability_as_a_characteristic_of_text).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."rhythmic-sequences" or (errorHandler.buildDepError "rhythmic-sequences"))
          (hsPkgs."phonetic-languages-phonetics-basics" or (errorHandler.buildDepError "phonetic-languages-phonetics-basics"))
          (hsPkgs."phladiprelio-general-shared" or (errorHandler.buildDepError "phladiprelio-general-shared"))
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
          (hsPkgs."phonetic-languages-basis" or (errorHandler.buildDepError "phonetic-languages-basis"))
          (hsPkgs."minmax" or (errorHandler.buildDepError "minmax"))
          ];
        buildable = true;
        };
      };
    }