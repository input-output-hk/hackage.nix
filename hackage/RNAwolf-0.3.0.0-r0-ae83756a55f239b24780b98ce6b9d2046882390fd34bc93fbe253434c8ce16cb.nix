{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "RNAwolf";
        version = "0.3.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010-2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, Stephan H Bernhart, Peter F Stadler, Ivo L Hofacker";
      homepage = "http://www.tbi.univie.ac.at/software/rnawolf/";
      url = "";
      synopsis = "RNA folding with non-canonical basepairs and base-triplets.";
      description = "The algorithm implemented here-in provides extended RNA\nsecondary structure prediction. Each predicted nucleotide\npairing is extended with an annotation describing which of\nthree nucleotide edges is engaged in the pairing. In addition,\neach nucleotide may be engaged in more than one pairing.\n\n\nThe algorithm is described in\n\nHoener zu Siederdissen C, Bernhart SH, Stadler PF, Hofacker IL,\n\n\"A Folding Algorithm for Extended RNA Secondary Structures\",\n\nBioinformatics (2011) 27 (13), i129-136\n\n<http://www.tbi.univie.ac.at/software/rnawolf/>\n\n\nPlease note that \"experimental\" does mean experimental. We are\nmostly concerned with determining a good set of (heuristic)\nrules for run-time reduction currently. This version does\ninclude stacking and is able to fold sequences of a few hundred\nnucleotides in seconds.\n\nTriplet calculations will come back with the next version (in a\nfew days). The recursions require a number of changes to keep\nthe runtimes down (as has been done for the extended loops\nwithout triplets).\n\n/We have recently split the Biohaskell libraries into smaller\nindividual libraries. In addition, stacking, intermediate\narrays, fusion and newtype-wrapping did require a number of\nchanges. Please send a mail, if you encounter strange behaviour\nor bugs./";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.parallel)
          (hsPkgs.random)
          (hsPkgs.vector)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.BiobaseXNA)
          (hsPkgs.BiobaseTrainingData)
          (hsPkgs.StatisticalMethods)
        ];
      };
      exes = {
        "RNAwolfTrain" = {
          depends = [ (hsPkgs.cmdargs) ];
        };
        "RNAwolf" = {
          depends = [ (hsPkgs.cmdargs) ];
        };
      };
    };
  }