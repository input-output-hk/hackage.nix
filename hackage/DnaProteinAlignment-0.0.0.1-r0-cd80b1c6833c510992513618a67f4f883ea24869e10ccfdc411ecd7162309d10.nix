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
      specVersion = "1.8.0";
      identifier = { name = "DnaProteinAlignment"; version = "0.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, 2013";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Frameshift-aware alignment of protein sequences with DNA sequences";
      description = "Perform a semi-global alignment of a DNA sequence (local) with\na protein sequence (global). The alignment includes the\npossibility of frame shifts.\n\nThe dynamic programming algorithm is created automatically from\natomic single-tape grammars using our grammar product\nframework.\n\nRun the program with @+RTS -N -RTS@ for optimal performance\nwhen aligning against a genome.\n\n\n\nIf you find this library or program useful, please cite:\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler\nProduct Grammars for Alignment and Folding\nsubmitted\n@\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler\nHow to Multiply Dynamic Programming Algorithms\nBrazilian Symposium on Bioinformatics (BSB 2013)\nLecture Notes in Bioinformatics 8213, Springer, Heidelberg\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."BiobaseBlast" or (errorHandler.buildDepError "BiobaseBlast"))
          (hsPkgs."BiobaseFasta" or (errorHandler.buildDepError "BiobaseFasta"))
          (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
          (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "DnaProteinAlignment" = {
          depends = [
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."BiobaseBlast" or (errorHandler.buildDepError "BiobaseBlast"))
            (hsPkgs."BiobaseFasta" or (errorHandler.buildDepError "BiobaseFasta"))
            (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."DnaProteinAlignment" or (errorHandler.buildDepError "DnaProteinAlignment"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }