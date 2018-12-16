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
      specVersion = "1.10.0";
      identifier = {
        name = "AlignmentAlgorithms";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013-2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2013-2017";
      homepage = "https://github.com/choener/AlignmentAlgorithms";
      url = "";
      synopsis = "Collection of alignment algorithms";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nA selection of (sequence) alignment algorithms. Both terminal,\nand syntactic variables, as well as the index type is not fixed\nhere. This makes it possible to select the correct structure of\nthe grammar here, but bind the required data type for alignment\nin user code.\n\nThat being said, these algorithms are mostly aimed towards\nsequence alignment problems.\n\nList of grammars for sequences:\n\n* global alignment\n* linear scoring: Needleman-Wunsch style\n\n* affine scoring: Gotoh\n\n* semiglobal alignment\n* overhang alignment\n\nList of grammar for trees:\n\n* global alignment\n* linear scoring\n\n* affine scoring\n\n* simplified affine scoring\n\n* global editing\n* linear scoring\n\nWe now provide tree alignment and editing algorithms as well.\nWe do not depend on ADPfusionForest to achieve this because\ngrammar rules are completely disconnected from the underlying\nADPfusion machinery.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fmlist)
          (hsPkgs.vector)
          (hsPkgs.ADPfusion)
          (hsPkgs.FormalGrammars)
          (hsPkgs.GrammarProducts)
          (hsPkgs.PrimitiveArray)
        ];
      };
    };
  }