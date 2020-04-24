{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0";
      identifier = { name = "RNAFold"; version = "1.99.3.4"; };
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
          (hsPkgs."BiobaseTurner" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTurner"))
          (hsPkgs."BiobaseVienna" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseVienna"))
          (hsPkgs."BiobaseXNA" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseXNA"))
          (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      exes = {
        "RNAFold" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."BiobaseTurner" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTurner"))
            (hsPkgs."BiobaseVienna" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseVienna"))
            (hsPkgs."BiobaseXNA" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseXNA"))
            (hsPkgs."RNAFold" or ((hsPkgs.pkgs-errors).buildDepError "RNAFold"))
            ];
          buildable = true;
          };
        "RNAEval" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."BiobaseTurner" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTurner"))
            (hsPkgs."BiobaseVienna" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseVienna"))
            (hsPkgs."BiobaseXNA" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseXNA"))
            (hsPkgs."RNAFold" or ((hsPkgs.pkgs-errors).buildDepError "RNAFold"))
            ];
          buildable = true;
          };
        };
      };
    }