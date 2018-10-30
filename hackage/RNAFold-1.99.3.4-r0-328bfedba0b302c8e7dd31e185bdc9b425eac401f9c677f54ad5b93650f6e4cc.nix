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
      specVersion = "1.8.0";
      identifier = {
        name = "RNAFold";
        version = "1.99.3.4";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010-2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen (Haskell), Ivo L. Hofacker et al (ViennaRNA), 2010-2013";
      homepage = "http://www.tbi.univie.ac.at/~choener/adpfusion";
      url = "";
      synopsis = "RNA secondary structure prediction";
      description = "RNAfold v2 using the ADPfusion library. The RNAfold algorithm\nis used to determine how fast we can be compared to a highly\noptimized C program.\n\nPlease use GHC 7.6 or newer.\n\nNOTE I'd like to rename this package to RNAfold, like the C\nimplementation. Do not install \"globally\", especially if you\nnormally use RNAfold from the ViennaRNA package, for obvious\nreasons.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.primitive)
          (hsPkgs.repa)
          (hsPkgs.strict)
          (hsPkgs.vector)
          (hsPkgs.ADPfusion)
          (hsPkgs.BiobaseTurner)
          (hsPkgs.BiobaseVienna)
          (hsPkgs.BiobaseXNA)
          (hsPkgs.PrimitiveArray)
        ];
      };
      exes = {
        "RNAFold" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.BiobaseTurner)
            (hsPkgs.BiobaseVienna)
            (hsPkgs.BiobaseXNA)
            (hsPkgs.RNAFold)
          ];
        };
        "RNAEval" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.BiobaseTurner)
            (hsPkgs.BiobaseVienna)
            (hsPkgs.BiobaseXNA)
            (hsPkgs.RNAFold)
          ];
        };
      };
    };
  }