{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "BNFC"; version = "2.8.2"; };
      license = "GPL-2.0-only";
      copyright = "(c) Andreas Abel, Kyle Butt, Jonas Almström Duregård, Krasimir Angelov, Jean-Philippe Bernardy, Bjorn Bringert, Johan Broberg, Paul Callaghan, Grégoire Détrez, Markus Forsberg, Ola Frid, Peter Gammie, Thomas Hallgren, Pascal Hof, Patrik Jansson, Kristofer Johannisson, Antti-Juhani Kaijanaho, Andreas Lööw, Kent Mein, Ulf Norell, Gabrielle Paganelli, Michael Pellauer and Aarne Ranta 2002 - 2018. Free software under GNU General Public License (GPL).";
      maintainer = "bnfc-dev@googlegroups.com";
      author = "";
      homepage = "http://bnfc.digitalgrammars.com/";
      url = "";
      synopsis = "A compiler front-end generator.";
      description = "The BNF Converter is a compiler construction tool generating a compiler front-end\nfrom a Labelled BNF grammar. It was originally written to generate Haskell,\nbut can also be used for generating Java, C, C++, C#, Ocaml and XML.\n\nGiven a Labelled BNF grammar the tool produces:\nan abstract syntax as a Haskell, C, C++, C#, Ocaml module or Java directory,\na case skeleton for the abstract syntax in the same language,\nan Alex, JLex, or Flex lexer generator file,\na Happy, CUP, Bison, or Antlr parser generator file,\na pretty-printer as a Haskell, Java, C, C++, C#, or Ocaml module,\nan XML representation,\na Latex file containing a readable specification of the language.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.array) ]; };
      exes = {
        "bnfc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.filepath)
            (hsPkgs.deepseq)
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
            ];
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.pretty)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.temporary)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            ];
          };
        "bnfc-doctests" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }