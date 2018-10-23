{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "AlignmentAlgorithms";
        version = "0.0.2.0";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013-2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2013-2015";
      homepage = "https://github.com/choener/AlignmentAlgorithms";
      url = "";
      synopsis = "Collection of alignment algorithms";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nA selection of (sequence) alignment algorithms. Both terminal,\nand syntactic variables, as well as the index type is not fixed\nhere. This makes it possible to select the correct structure of\nthe grammar here, but bind the required data type for alignment\nin user code.\n\nThat being said, these algorithms are mostly aimed towards\nsequence alignment problems.\n\nList of grammars:\n\n* global alignment (Needleman-Wunsch style)\n";
      buildType = "Simple";
    };
    components = {
      "AlignmentAlgorithms" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ADPfusion)
          (hsPkgs.containers)
          (hsPkgs.fmlist)
          (hsPkgs.FormalGrammars)
          (hsPkgs.GrammarProducts)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.vector)
        ];
      };
    };
  }