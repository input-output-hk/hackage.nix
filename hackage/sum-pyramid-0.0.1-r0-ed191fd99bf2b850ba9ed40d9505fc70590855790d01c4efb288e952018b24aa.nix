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
      identifier = { name = "sum-pyramid"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/sum-pyramid";
      url = "";
      synopsis = "Create Sum Pyramid (Additionstreppe) exercises";
      description = "Create Sum Pyramid (Additionstreppe) exercises.\nYou specify the size of the pyramid and the number range of the base line\nand the program emits LaTeX code for puzzles.\n\n> sum-pyramid create --size 5\n\n> nix-shell --run \"make puzzle.pdf\"\n\nYou may also use multiplications (@--multiplication@),\nor both addition and multiplication (@--mixed@).\nIn case of additions only,\nyou may allow puzzles that are uniquely solvable,\nbut possibly not step-by-step (@--allow-gaps@).\nYou can also control via LaTeX macros\nwhether and how unknown cells are displayed.\n\nExample output: http://code.henning-thielemann.de/sum-pyramid/puzzle.pdf";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sum-pyramid" = {
          depends = [
            (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"))
            (hsPkgs."unique-logic-tf" or (errorHandler.buildDepError "unique-logic-tf"))
            (hsPkgs."combinatorial" or (errorHandler.buildDepError "combinatorial"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      tests = {
        "sum-pyramid-test" = {
          depends = [
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"))
            (hsPkgs."unique-logic-tf" or (errorHandler.buildDepError "unique-logic-tf"))
            (hsPkgs."combinatorial" or (errorHandler.buildDepError "combinatorial"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }