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
      specVersion = "1.4";
      identifier = { name = "BiobaseFR3D"; version = "0.2.3.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Importer for FR3D resources";
      description = "Provides importers for FR3D resource files. Of particular\ninterest are basepairs files which describe canonical and\nnon-canonical (non-Watson-Crick) base pairings in RNA secondary\nstructure.\n\nThe original FR3D paper is:\n\nFR3D: Finding Local and Composite Recurrent Structural Motifs\nin RNA 3D Structures, Michael Sarver; Craig L. Zirbel; Jesse\nStombaugh; Ali Mokdad; Neocles B. Leontis. /Journal of\nMathematical Biology/ (2008) 56:215–252.\n\nChanges since any 0.1.*:\n\n* Zero-based indexing (FR3D is one-based!) for sequence\npositions. We do not change the nucleotide PDB number.\n\n* Some sanity checks, a number of FR3D files fall through at\nthis and need to be checked for consistency";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
        ];
        buildable = true;
      };
    };
  }