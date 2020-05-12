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
    flags = { llvm = false; };
    package = {
      specVersion = "1.6.0";
      identifier = { name = "RNAwolf"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010-2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, Stephan H Bernhart, Peter F Stadler, Ivo L Hofacker";
      homepage = "http://www.tbi.univie.ac.at/software/rnawolf/";
      url = "";
      synopsis = "RNA folding with non-canonical basepairs and base-triplets.";
      description = "The algorithm implemented here-in provides extended RNA\nsecondary structure prediction. Each predicted nucleotide\npairing is extended with an annotation describing which of\nthree nucleotide edges is engaged in the pairing. In addition,\neach nucleotide may be engaged in more than one pairing.\n\n\nThe algorithm is described in\n\nHoener zu Siederdissen C, Bernhart SH, Stadler PF, Hofacker IL,\n\n\"A Folding Algorithm for Extended RNA Secondary Structures\",\n\nBioinformatics (2011) 27 (13), i129-136\n\n<http://www.tbi.univie.ac.at/software/rnawolf/>\n\n\nPlease note that \"experimental\" does mean experimental. We are\nmostly concerned with determining a good set of (heuristic)\nrules for run-time reduction currently. This version does\ninclude stacking and is able to fold sequences of a few hundred\nnucleotides in seconds.\n\nTriplet calculations will come back with the next version (in a\nfew days). The recursions require a number of changes to keep\nthe runtimes down (as has been done for the extended loops\nwithout triplets).\n\nWe have recently split the Biohaskell libraries into smaller\nindividual libraries. In addition, stacking, intermediate\narrays, fusion and newtype-wrapping did require a number of\nchanges. Please send a mail, if you encounter strange behaviour\nor bugs.\n\nChanges in 0.4.0.0\n\n* secondary structure constraints (untested and undocumented)\n\nChanges in 0.3.2.0\n\n* simpler training wrapper\n\n* added parallelism option for multi-core systems (reduce\niteration time for the cost of a possible reduction in\ntraining efficiency; but should be worth it)\n\nChanges in 0.3.1.0\n\n* fixed bugs introduced by bulge/interior/multi-loops";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
          (hsPkgs."BiobaseTrainingData" or (errorHandler.buildDepError "BiobaseTrainingData"))
          (hsPkgs."StatisticalMethods" or (errorHandler.buildDepError "StatisticalMethods"))
          ];
        buildable = true;
        };
      exes = {
        "RNAwolfTrain" = {
          depends = [
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        "RNAwolf" = {
          depends = [
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }