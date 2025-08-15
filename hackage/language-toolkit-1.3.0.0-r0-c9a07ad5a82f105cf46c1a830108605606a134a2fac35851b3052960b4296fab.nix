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
      identifier = { name = "language-toolkit"; version = "1.3.0.0"; };
      license = "MIT";
      copyright = "(c) 2014-2025 Dakotah Lambert";
      maintainer = "Dakotah Lambert <dakotahlambert@acm.org>";
      author = "Dakotah Lambert, James Rogers";
      homepage = "https://github.com/vvulpes0/Language-Toolkit-2";
      url = "";
      synopsis = "A set of tools for analyzing languages via logic and automata";
      description = "This provides the Language Toolkit (LTK) library\nand associated executables.\nThere are four main components:\n\n* @factorize@,\nwhich takes as input a set of finite-state automata\nand writes out for each one a set of constraints\nthat approximates (or, if possible, defines) it.\n\n* @plebby@,\nan interactive theorem-prover in which one can\ndefine languages via logical constraints\nor import finite-state automata\nand get information about the languages so defined.\n\n* @classify@,\na command-line classification program useful\nfor batch jobs.\n\n* And the @LTK@ library,\nwhich includes the functions used by\n@factorize@ and @plebby@\nas well as several other useful tools.\n\nThis project began as a simple tool for working with\nfinite-state automata, and has grown considerably more\nuseful in working specifically with sub-regular languages\nas it has matured.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."finite-semigroups" or (errorHandler.buildDepError "finite-semigroups"))
        ];
        buildable = true;
      };
      exes = {
        "dotify" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-toolkit" or (errorHandler.buildDepError "language-toolkit"))
          ];
          buildable = true;
        };
        "factorize" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-toolkit" or (errorHandler.buildDepError "language-toolkit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
        "make-non-strict-constraints" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-toolkit" or (errorHandler.buildDepError "language-toolkit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
          buildable = true;
        };
        "plebby" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."language-toolkit" or (errorHandler.buildDepError "language-toolkit"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
        "classify" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."finite-semigroups" or (errorHandler.buildDepError "finite-semigroups"))
            (hsPkgs."language-toolkit" or (errorHandler.buildDepError "language-toolkit"))
          ];
          buildable = true;
        };
      };
    };
  }