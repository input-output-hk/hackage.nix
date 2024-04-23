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
      specVersion = "1.8";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."BiobaseTurner" or (errorHandler.buildDepError "BiobaseTurner"))
          (hsPkgs."BiobaseVienna" or (errorHandler.buildDepError "BiobaseVienna"))
          (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
        ];
        buildable = true;
      };
      exes = {
        "RNAFold" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."BiobaseTurner" or (errorHandler.buildDepError "BiobaseTurner"))
            (hsPkgs."BiobaseVienna" or (errorHandler.buildDepError "BiobaseVienna"))
            (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
            (hsPkgs."RNAFold" or (errorHandler.buildDepError "RNAFold"))
          ];
          buildable = true;
        };
        "RNAEval" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."BiobaseTurner" or (errorHandler.buildDepError "BiobaseTurner"))
            (hsPkgs."BiobaseVienna" or (errorHandler.buildDepError "BiobaseVienna"))
            (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
            (hsPkgs."RNAFold" or (errorHandler.buildDepError "RNAFold"))
          ];
          buildable = true;
        };
      };
    };
  }