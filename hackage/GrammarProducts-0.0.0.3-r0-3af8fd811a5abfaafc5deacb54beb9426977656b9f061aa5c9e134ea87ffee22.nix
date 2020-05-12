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
      specVersion = "1.6.0";
      identifier = { name = "GrammarProducts"; version = "0.0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, Ivo L. Hofacker, Peter F. Stadler, 2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, 2013";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Grammar products and higher-dimensional grammars";
      description = "An algebra of liner and context-free grammars.\n\nThis library provides the implementation of our theory of\nalgebraic operations over linear and context-free grammars.\nUsing algebraic operations, it is possible to construct complex\ndynamic programming algorithms from simpler \"atomic\" grammars.\n\nOur most important contribution is the definition of a product\nof grammars which naturally leads to alignment-like algorithms\non multiple tapes.\n\nAn efficient implementation of the resulting grammars is\npossible via the ADPfusion framework. The @FormalGrammars@\nlibrary provides the required \"Template Haskell\" machinary.\n\nAlternatively, the resulting grammars can also be\npretty-printed in various ways (LaTeX, ANSI, Haskell module\nwith signature and grammar).\n\n\n\nFormal background can be found in two papers:\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler\nProduct Grammars for Alignment and Folding\nsubmitted\n@\n\nand\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler\nHow to Multiply Dynamic Programming Algorithms\nBrazilian Symposium on Bioinformatics (BSB 2013)\nLecture Notes in Bioinformatics 8213, Springer, Heidelberg\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
          (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          ];
        buildable = true;
        };
      exes = {
        "GrammarProductPP" = {
          depends = [
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }