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
    flags = { examples = false; };
    package = {
      specVersion = "1.10.0";
      identifier = { name = "GrammarProducts"; version = "0.1.1.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013-2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2013-2015";
      homepage = "https://github.com/choener/GrammarProducts";
      url = "";
      synopsis = "Grammar products and higher-dimensional grammars";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nAn algebra of liner and context-free grammars.\n\nThis library provides the implementation of our theory of\nalgebraic operations over linear and context-free grammars.\nUsing algebraic operations, it is possible to construct complex\ndynamic programming algorithms from simpler \"atomic\" grammars.\n\nOur most important contribution is the definition of a product\nof grammars which naturally leads to alignment-like algorithms\non multiple tapes.\n\nAn efficient implementation of the resulting grammars is\npossible via the ADPfusion framework. The @FormalGrammars@\nlibrary provides the required \"Template Haskell\" machinery.\nGramarProducts can be integrated as a plugin into the existing\ntransformation from DSL to ADPfusion. Haskell users can just\nuse the QQ function provided in the .QQ module.\n\nAlternatively, the resulting grammars can also be\npretty-printed in various ways (LaTeX, ANSI, Haskell module\nwith signature and grammar).\n\nThe formal background can be found in two papers given in the\nREADME. The gADP homepage has further details, tutorials,\nexamples.\n";
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
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          ];
        buildable = true;
        };
      exes = {
        "AlignGlobal" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
            (hsPkgs."GrammarProducts" or (errorHandler.buildDepError "GrammarProducts"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }