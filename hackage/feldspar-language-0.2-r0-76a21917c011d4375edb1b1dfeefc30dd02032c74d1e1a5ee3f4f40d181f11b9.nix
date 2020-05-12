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
      specVersion = "1.2.3";
      identifier = { name = "feldspar-language"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2010, ERICSSON AB";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Functional programming group at Chalmers University of Technology";
      homepage = "http://feldspar.sourceforge.net/";
      url = "";
      synopsis = "A functional embedded language for DSP and parallelism";
      description = "Feldspar (Functional Embedded Language for DSP and PARallelism)\nis an embedded DSL for describing digital signal processing\nalgorithms. This package contains the language front-end and an\ninterpreter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }