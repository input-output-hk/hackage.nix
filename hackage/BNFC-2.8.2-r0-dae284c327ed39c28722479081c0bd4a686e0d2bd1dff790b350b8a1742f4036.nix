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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "bnfc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "bnfc-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }