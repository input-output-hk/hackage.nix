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
        version = "0.7.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "";
      url = "";
      synopsis = "A PhLADiPreLiO implementation for Ukrainian that uses hashes";
      description = "It is another project that is based on the similar ideas as [phonetic-languages-simplified-examples-array package](https://hackage.haskell.org/package/phonetic-languages-simplified-examples-array). For documentation for these ideas, see: [PhLADiPreLiO.Ukr.21.pdf](https://oleksandrzhabenko.github.io/uk/rhythmicity/PhLADiPreLiO.Ukr.21.pdf) [PhLADiPreLiO.Eng.21.pdf](https://oleksandrzhabenko.github.io/uk/rhythmicity/PhLADiPreLiO.Eng.21.pdf)";
      buildType = "Simple";
      };
    components = {
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
            ];
          buildable = true;
          };
        };
      };
    }