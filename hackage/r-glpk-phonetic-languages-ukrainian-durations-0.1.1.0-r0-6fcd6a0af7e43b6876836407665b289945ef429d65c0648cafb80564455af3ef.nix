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
        name = "r-glpk-phonetic-languages-ukrainian-durations";
        version = "0.1.1.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/r-glpk-phonetic-languages-ukrainian-durations";
      url = "";
      synopsis = "Can be used to calculate the durations of the approximations of the Ukrainian phonemes.";
      description = "Can be used to calculate the durations of the approximations of the Ukrainian phonemes using some prepared text with its correct (at least mostly) pronunciation. The prepared text is located in the same directory and contains lines --- the Ukrainian word and its duration in seconds separated with whitespace.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
          (hsPkgs."ukrainian-phonetics-basic" or (errorHandler.buildDepError "ukrainian-phonetics-basic"))
          ];
        buildable = true;
        };
      exes = {
        "pldUkr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."ukrainian-phonetics-basic" or (errorHandler.buildDepError "ukrainian-phonetics-basic"))
            ];
          buildable = true;
          };
        };
      };
    }