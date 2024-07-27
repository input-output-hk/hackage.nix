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
      specVersion = "1.10";
      identifier = { name = "lazy-priority-queue"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Stilo International plc";
      maintainer = "mblazevic@stilo.com";
      author = "Mario Blažević";
      homepage = "";
      url = "";
      synopsis = "Lazy-Spined Monadic Priority Queues";
      description = "This library provides a priority queue data structure that is meant to be used primarily as a control\nstructure, in the vein of list and Logic. The PriorityQueue data structure in question is an instance of\nApplicative, Alternative, and Monad classes much like the standard list data type. In addition, it also\ntracks the cost incurred by each computation it stores, and provides operations for pruning overly\nexpansive branches.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "Levenshtein" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lazy-priority-queue" or (errorHandler.buildDepError "lazy-priority-queue"))
          ];
          buildable = true;
        };
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lazy-priority-queue" or (errorHandler.buildDepError "lazy-priority-queue"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = true;
        };
      };
    };
  }