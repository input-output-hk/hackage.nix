{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ClustalParser";
          version = "1.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "egg@tbi.univie.ac.at";
        author = "Florian Eggenhofer";
        homepage = "";
        url = "";
        synopsis = "Libary for parsing Clustal tools output";
        description = "Currently contains parsers and datatypes for: clustalw2, clustalo\n\nFor more information on clustal Tools refer to <http://www.clustal.org/>\n\nClustalW2 is a general purpose DNA or protein multiple sequence alignment program for three or more sequences.\n\nClustal Omega is a new multiple sequence alignment program that uses seeded guide trees and HMM profile-profile techniques to generate alignments between three or more sequences.";
        buildType = "Simple";
      };
      components = {
        ClustalParser = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
        exes = {
          ClustalParserTest = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.ClustalParser
            ];
          };
        };
      };
    }