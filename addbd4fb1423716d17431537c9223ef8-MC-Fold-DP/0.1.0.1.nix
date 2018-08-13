{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      fastbuild = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.4.0";
      identifier = {
        name = "MC-Fold-DP";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010-2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, Stephan H Bernhart, Peter F Stadler, Ivo L Hofacker";
      homepage = "http://www.tbi.univie.ac.at/software/mcfolddp/";
      url = "";
      synopsis = "Folding algorithm based on nucleotide cyclic motifs.";
      description = "This is a RNA secondary structure prediction tool based on the\nidea of combining small motifs, called nucleotide cyclic motifs\n(NCMs). The algorithm implemented here and described in\n\nHoener zu Siederdissen C, Bernhart SH, Stadler PF, Hofacker IL,\n\"A Folding Algorithm for Extended RNA Secondary Structures\",\n2011, submitted\n\nhas polynomial runtime in O(n^3) and uses a (pseudo-energy)\nscoring scheme based on\n\nParisien M, Major F. \"The MC-Fold and MC-Sym pipeline infers\nRNA structure from sequence data\",  Nature 2008,\n452(7183):51-55. <http://www.major.iric.ca/MC-Fold/>\n\nThis program uses the same database as MC-Fold (which has\nexponential run-time) and aims to be able to produce the same\nresults.\n\nThe underlying grammar of our implementation is unambiguous and\nallows the complete evaluation of all structures within an\nenergy band above the ground state, presenting each unique\nstructure just once. Alternatively, the grammar allows\npartition function calculations.\n\nCurrent status:\n\n* comparable prediction accuracy on sequences\n\n* possibility to use sparse data correction\n\n* handles non-ACGU nucleotides gracefully\n\n* suboptimals: return all structures within an energy band above the ground state\n\n* constraint folding (fill partial structures)\n\nTodo:\n\n* Boltzmann likelihood calculations\n\n* pseudoknot calculations (currently aiming for a pknotsRG-like algorithm)";
      buildType = "Simple";
    };
    components = {
      "MC-Fold-DP" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.tuple)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.Biobase)
        ];
      };
      exes = {
        "MCFoldDP" = {
          depends  = [
            (hsPkgs.cmdargs)
            (hsPkgs.split)
          ];
        };
      };
    };
  }