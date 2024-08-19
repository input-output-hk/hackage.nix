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
    flags = { exe = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "puresat"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2024 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/puresat";
      url = "";
      synopsis = "Pure Haskell SAT-solver";
      description = "SAT Solver implemented in Haskell.\n\nPureSAT uses DPLL with non-chronological backtracking and learning of binaary clauses.\nSolver is in no-comparison to the state of the art solvers, but it's fast enough to solve sudoku.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."puresat".components.sublibs.internal or (errorHandler.buildDepError "puresat:internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
        "dimacs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."puresat".components.sublibs.internal or (errorHandler.buildDepError "puresat:internal"))
          ];
          buildable = true;
        };
      };
      exes = {
        "puresat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."puresat".components.sublibs.dimacs or (errorHandler.buildDepError "puresat:dimacs"))
            (hsPkgs."puresat".components.sublibs.internal or (errorHandler.buildDepError "puresat:internal"))
          ];
          buildable = if !flags.exe then false else true;
        };
      };
      tests = {
        "puresat-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."puresat" or (errorHandler.buildDepError "puresat"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "puresat-small" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."puresat" or (errorHandler.buildDepError "puresat"))
          ];
          buildable = true;
        };
        "puresat-dimacs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."minisat" or (errorHandler.buildDepError "minisat"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."puresat".components.sublibs.dimacs or (errorHandler.buildDepError "puresat:dimacs"))
            (hsPkgs."puresat".components.sublibs.internal or (errorHandler.buildDepError "puresat:internal"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "sat-simple-sudoku" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."puresat" or (errorHandler.buildDepError "puresat"))
          ];
          buildable = true;
        };
      };
    };
  }