{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.ADPfusion)
          (hsPkgs.array)
          (hsPkgs.BiobaseBlast)
          (hsPkgs.BiobaseFasta)
          (hsPkgs.BiobaseXNA)
          (hsPkgs.biocore)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.dlist)
          (hsPkgs.parallel)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.repa)
          (hsPkgs.split)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "DnaProteinAlignment" = {
          depends = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.ADPfusion)
            (hsPkgs.array)
            (hsPkgs.BiobaseBlast)
            (hsPkgs.BiobaseFasta)
            (hsPkgs.BiobaseXNA)
            (hsPkgs.biocore)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.dlist)
            (hsPkgs.DnaProteinAlignment)
            (hsPkgs.parallel)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.repa)
            (hsPkgs.split)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }