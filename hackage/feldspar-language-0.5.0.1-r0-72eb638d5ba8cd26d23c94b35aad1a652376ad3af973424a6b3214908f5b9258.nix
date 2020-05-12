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
      identifier = { name = "feldspar-language"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2011, ERICSSON AB";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Functional programming group at Chalmers University of Technology";
      homepage = "http://feldspar.inf.elte.hu/feldspar/";
      url = "";
      synopsis = "A functional embedded language for DSP and parallelism";
      description = "Feldspar (Functional Embedded Language for DSP and PARallelism)\nis an embedded DSL for describing digital signal processing\nalgorithms. This package contains the language front-end and an\ninterpreter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-hash" or (errorHandler.buildDepError "data-hash"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."patch-combinators" or (errorHandler.buildDepError "patch-combinators"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
          (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          (hsPkgs."QuickAnnotate" or (errorHandler.buildDepError "QuickAnnotate"))
          ];
        buildable = true;
        };
      };
    }