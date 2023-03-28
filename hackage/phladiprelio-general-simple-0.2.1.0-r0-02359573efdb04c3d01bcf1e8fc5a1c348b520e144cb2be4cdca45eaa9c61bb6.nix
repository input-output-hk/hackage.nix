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
        version = "0.2.1.0";
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
          ];
        buildable = true;
        };
      };
    }