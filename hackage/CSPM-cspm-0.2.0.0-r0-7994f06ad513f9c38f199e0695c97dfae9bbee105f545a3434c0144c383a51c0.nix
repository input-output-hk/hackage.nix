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
      specVersion = "1.6";
      identifier = { name = "CSPM-cspm"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
      author = "2010 Marc Fontaine";
      homepage = "http://www.stups.uni-duesseldorf.de/~fontaine/csp";
      url = "";
      synopsis = "cspm command line tool for analyzing CSPM specifications.";
      description = "cspm is a small command line tool for analyzing CSPM specifications.\nIt supports four modes of operation:\n1) cspm eval  -> evaluate an expression.\n2) cspm trace -> interactively trace a process.\n3) cspm dot   -> compute the labeled transition system of a process and dump it as dot-file.\n4) cspm fdr   -> compute the LTS and dump it a fdr script suitable for refinement checking.\ncspm is not a full featured FDR replacement.\nThe main purpose of cspm is to show how the different CSPM-packages work together.\nLTS computation can demonstrate nice speed-ups on multi-core machines (if the LTS\ncontains enough branching).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cspm" = {
          depends = [
            (hsPkgs."CSPM-Frontend" or (errorHandler.buildDepError "CSPM-Frontend"))
            (hsPkgs."CSPM-CoreLanguage" or (errorHandler.buildDepError "CSPM-CoreLanguage"))
            (hsPkgs."CSPM-FiringRules" or (errorHandler.buildDepError "CSPM-FiringRules"))
            (hsPkgs."CSPM-Interpreter" or (errorHandler.buildDepError "CSPM-Interpreter"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }