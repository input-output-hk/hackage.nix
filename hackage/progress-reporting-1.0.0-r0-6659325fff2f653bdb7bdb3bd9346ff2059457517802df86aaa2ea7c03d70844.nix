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
      identifier = { name = "progress-reporting"; version = "1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2016 Chordify B.V., Groningen";
      maintainer = "haskelldevelopers@chordify.net";
      author = "Jeroen Bransen";
      homepage = "";
      url = "";
      synopsis = "Functionality for reporting function progress.";
      description = "This module provides a set of functions for writing\nfunctions that report their own progress in a monadic\ncontext, which can be evaluated to get progress reports\nwhile time-consuming functions are running.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }