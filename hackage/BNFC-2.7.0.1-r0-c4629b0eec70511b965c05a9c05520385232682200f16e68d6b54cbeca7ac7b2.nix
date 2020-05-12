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
      identifier = { name = "BNFC"; version = "2.7.0.1"; };
      license = "GPL-2.0-only";
      copyright = "(c) Krasimir Angelov, Jean-Philippe Bernardy, Bjorn Bringert, Johan Broberg, Paul Callaghan, Markus Forsberg, Ola Frid, Peter Gammie, Patrik Jansson, Kristofer Johannisson, Antti-Juhani Kaijanaho, Ulf Norell, Michael Pellauer and Aarne Ranta 2002 - 2012. Free software under GNU General Public License (GPL).";
      maintainer = "bnfc-dev@googlegroups.com";
      author = "";
      homepage = "http://bnfc.digitalgrammars.com/";
      url = "";
      synopsis = "A compiler front-end generator.";
      description = "The BNF Converter is a compiler construction tool generating a compiler front-end\nfrom a Labelled BNF grammar. It was originally written to generate Haskell,\nbut starting from Version 2.0, it can also be used for generating Java, C++, and C.\n\nGiven a Labelled BNF grammar the tool produces:\nan abstract syntax as a Haskell/C++/C module or Java directory,\na case skeleton for the abstract syntax in the same language,\nan Alex, JLex, or Flex lexer generator file,\na Happy, CUP, or Bison parser generator file,\na pretty-printer as a Haskell/Java/C++/C module,\na Latex file containing a readable specification of the language.";
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
        };
      };
    }