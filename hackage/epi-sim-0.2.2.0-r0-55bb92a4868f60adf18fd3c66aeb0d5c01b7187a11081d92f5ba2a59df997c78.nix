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
      specVersion = "1.22";
      identifier = { name = "epi-sim"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "2020 Alexander Zarebski";
      maintainer = "aezarebski@gmail.com";
      author = "Alexander Zarebski";
      homepage = "https://github.com/aezarebski/epi-sim#readme";
      url = "";
      synopsis = "A library for simulating epidemics as birth-death processes.";
      description = "A library for simulating epidemics, with a focus on phylodynamics and\nobservation models.\n\n/Available models/\n\n* Birth-Death (see `Epidemic.BirthDeath`)\n\n* Birth-Death-Sampling (see `Epidemic.BirthDeathSampling`)\n\n* Birth-Death-Sampling-Occurrence (see `Epidemic.BirthDeathSamplingOccurrence`)\n\n* Birth-Death-Sampling-Catastrophe-Occurrence (see `Epidemic.BirthDeathSamplingCatastropheOccurrence`)\n\n* Birth-Death-Sampling-Catastrophe-Occurrence-Disaster (see `Epidemic.BDSCOD`)\n\n* Inhomogeneous Birth-Death (see `Epidemic.InhomogeneousBD`)\n\n* Inhomogeneous Birth-Death-Sampling (see `Epidemic.InhomogeneousBDS`)\n\n/Output format/\n\nThe output is a CSV with a header encoding which events occurred when and to\nwhom: @event,time,primaryPerson,secondaryPerson@. The @primary person@ is either\nthe infecting person or the person who has been removed in some manner, the\n@secondary person@ is the person who was infected, or this is a missing value.\nThere are functions to assist in extracting observations from a full simulation:\n@birthDeathSamplingOccurrenceObservedEvents@. In the case of a catastrophe event\nwhere multiple individuals may be removed, they are represented as a colon\nseparated list of identifiers in the @primaryPerson@ field.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          ];
        buildable = true;
        };
      tests = {
        "epi-sim-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."epi-sim" or (errorHandler.buildDepError "epi-sim"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
            ];
          buildable = true;
          };
        };
      };
    }