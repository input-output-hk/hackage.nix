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
      specVersion = "1.10.0";
      identifier = { name = "AlignmentAlgorithms"; version = "0.0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013-2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2013-2015";
      homepage = "http://www.bioinf.uni-leipzig.de/Software/gADP/";
      url = "";
      synopsis = "Collection of alignment algorithms";
      description = "A selection of (sequence) alignment algorithms. Both terminal,\nand syntactic variables, as well as the index type is not fixed\nhere. This makes it possible to select the correct structure of\nthe grammar here, but bind the required data type for alignment\nin user code.\n\n<https://github.com/choener/AlignmentAlgorithms/README.md>\n\nThat being said, these algorithms are mostly aimed towards\nsequence alignment problems.\n\n* global alignment (Needleman-Wunsch style)\n\n\n\n@\nChristian Hoener zu Siederdissen\nSneaking Around ConcatMap: Efficient Combinators for Dynamic Programming\n2012. Proceedings of the 17th ACM SIGPLAN international conference on Functional programming\n<http://doi.acm.org/10.1145/2364527.2364559> preprint: <http://www.tbi.univie.ac.at/newpapers/pdfs/TBI-p-2012-2.pdf>\n@\n\n@\nAndrew Farmer, Christian Höner zu Siederdissen, and Andy Gill.\nThe HERMIT in the stream: fusing stream fusion’s concatMap.\n2014. Proceedings of the ACM SIGPLAN 2014 workshop on Partial evaluation and program manipulation.\n<http://dl.acm.org/citation.cfm?doid=2543728.2543736>\n@\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler.\nProduct Grammars for Alignment and Folding.\n2014. IEEE/ACM Transactions on Computational Biology and Bioinformatics. 99.\n<http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6819790>\n@\n\n@\nChristian Höner zu Siederdissen, Sonja J. Prohaska, and Peter F. Stadler.\nAlgebraic Dynamic Programming over General Data Structures.\n2015. submitted.\n@\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fmlist" or (errorHandler.buildDepError "fmlist"))
          (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
          (hsPkgs."GrammarProducts" or (errorHandler.buildDepError "GrammarProducts"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }