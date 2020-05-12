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
    flags = {
      haskell-tests = true;
      java-tests = true;
      c-tests = true;
      cpp-tests = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "BNFC"; version = "2.5.0"; };
      license = "LicenseRef-GPL";
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
            ];
          buildable = true;
          };
        };
      tests = {
        "system-tests-haskell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.haskell-tests then true else false;
          };
        "system-tests-java" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.java-tests then true else false;
          };
        "system-tests-c" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.c-tests then true else false;
          };
        "system-tests-cpp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.cpp-tests then true else false;
          };
        "system-tests-cpp-no-stl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.cpp-tests then true else false;
          };
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }