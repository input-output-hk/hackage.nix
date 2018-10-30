{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "BiobaseTrainingData";
        version = "0.1.2.2";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "RNA folding training data";
      description = "Parameter training for RNA secondary structure prediction tools\nrequires data to train on. Since there are a number of\ndifferent available formats, and handling them all in the\ntraining tools is a pain, we have this library and programs.\n\"MkTrainingData\" transforms different formats and they all\nproduce a common \"training data\" format. This format is\nHaskell-readable (and only partially human-readable)\nline-by-line. Generating additional training data is therefor\neasy as one can just \"cat\" together different training files.\n\nNote that several features are designed around /extended/ RNA\nsecondary structures.\n\nNow with some filtering and manipulation options.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.either-unwrap)
          (hsPkgs.iteratee)
          (hsPkgs.vector)
          (hsPkgs.BiobaseDotP)
          (hsPkgs.BiobaseFR3D)
          (hsPkgs.BiobaseXNA)
        ];
      };
      exes = {
        "MkTrainingData" = {
          depends  = [ (hsPkgs.cmdargs) ];
        };
      };
    };
  }