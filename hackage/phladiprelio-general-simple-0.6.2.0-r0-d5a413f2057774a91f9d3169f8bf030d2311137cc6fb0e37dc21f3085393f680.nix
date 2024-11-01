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
        version = "0.6.2.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "";
      url = "";
      synopsis = "A generalized functionality of PhLADiPreLiO for different languages that uses hash algorithms.";
      description = "The basic ideas of PhLADiPreLiO (Phonetic Languages Approach to Discovering Preferred Line Options) are described in the work: [PhLADiPreLiO.Ukr.21.pdf](https://oleksandrzhabenko.github.io/uk/rhythmicity/PhLADiPreLiO.Ukr.21.pdf) [PhLADiPreLiO.Eng.21.pdf](https://oleksandrzhabenko.github.io/uk/rhythmicity/PhLADiPreLiO.Eng.21.pdf). This is the generalization and it uses somewhat different approach with the same basic ideas.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
        ];
        buildable = true;
      };
    };
  }