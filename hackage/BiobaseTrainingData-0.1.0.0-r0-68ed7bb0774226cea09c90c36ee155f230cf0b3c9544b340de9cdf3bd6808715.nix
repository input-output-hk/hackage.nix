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
      specVersion = "1.6";
      identifier = { name = "BiobaseTrainingData"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "RNA folding training data";
      description = "Parameter training for RNA secondary structure prediction tools\nrequires data to train on. Since there are a number of\ndifferent available formats, and handling them all in the\ntraining tools is a pain, we have this library and programs.\n\"MkTrainingData\" transforms different formats and they all\nproduce a common \"training data\" format. This format is\nHaskell-readable (and only partially human-readable)\nline-by-line. Generating additional training data is therefor\neasy as one can just \"cat\" together different training files.\n\nNote that several features are designed around /extended/ RNA\nsecondary structures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."BiobaseDotP" or (errorHandler.buildDepError "BiobaseDotP"))
          (hsPkgs."BiobaseFR3D" or (errorHandler.buildDepError "BiobaseFR3D"))
          (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
        ];
        buildable = true;
      };
      exes = {
        "MkTrainingData" = {
          depends = [
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = true;
        };
      };
    };
  }