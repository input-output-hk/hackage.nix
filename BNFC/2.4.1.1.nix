{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "BNFC";
          version = "2.4.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Krasimir Angelov, Bjorn Bringert, Johan Broberg, Paul Callaghan, Markus Forsberg, Ola Frid, Peter Gammie, Patrik Jansson, Kristofer Johannisson, Antti-Juhani Kaijanaho, Ulf Norell, Michael Pellauer and Aarne Ranta 2002 - 2010. Free software under GNU General Public License (GPL).";
        maintainer = "Markus Forsberg <markus.forsberg@gu.se> Aarne Ranta <aarne@chalmers.se>";
        author = "";
        homepage = "http://www.cse.chalmers.se/research/group/Language-technology/BNFC/";
        url = "";
        synopsis = "A compiler front-end generator.";
        description = "The BNF Converter is a compiler construction tool generating a compiler front-end\nfrom a Labelled BNF grammar. It was originally written to generate Haskell,\nbut starting from Version 2.0, it can also be used for generating Java, C++, and C.\n\nGiven a Labelled BNF grammar the tool produces:\nan abstract syntax as a Haskell/C++/C module or Java directory,\na case skeleton for the abstract syntax in the same language,\nan Alex, JLex, or Flex lexer generator file,\na Happy, CUP, or Bison parser generator file,\na pretty-printer as a Haskell/Java/C++/C module,\na Latex file containing a readable specification of the language.";
        buildType = "Simple";
      };
      components = {
        exes = {
          bnfc = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.array
              hsPkgs.process
            ];
          };
        };
      };
    }