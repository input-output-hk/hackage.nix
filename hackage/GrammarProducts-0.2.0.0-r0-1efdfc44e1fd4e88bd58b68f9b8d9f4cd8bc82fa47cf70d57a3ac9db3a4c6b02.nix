{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10.0";
      identifier = { name = "GrammarProducts"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013-2019";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2013-2019";
      homepage = "https://github.com/choener/GrammarProducts";
      url = "";
      synopsis = "Grammar products and higher-dimensional grammars";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nAn algebra of linear and context-free grammars.\n\nThis library provides the implementation of our theory of algebraic operations over\nlinear and context-free grammars. Using algebraic operations, it is possible to\nconstruct complex dynamic programming algorithms from simpler \"atomic\" grammars.\n\nOur most important contribution is the definition of a product of grammars which\nnaturally leads to alignment-like algorithms on multiple tapes.\n\nAn efficient implementation of the resulting grammars is possible via the ADPfusion\nframework. The @FormalGrammars@ library provides the required \"Template Haskell\"\nmachinery. GramarProducts can be integrated as a plugin into the existing\ntransformation from DSL to ADPfusion. Haskell users can just use the QQ function\nprovided in the .QQ module.\n\nAlternatively, the resulting grammars can also be pretty-printed in various ways\n(ANSI, Haskell module with signature and grammar).\n\nThe formal background can be found in two papers given in the README. The gADP\nhomepage has further details, tutorials, examples.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."newtype" or ((hsPkgs.pkgs-errors).buildDepError "newtype"))
          (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
          (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
          (hsPkgs."FormalGrammars" or ((hsPkgs.pkgs-errors).buildDepError "FormalGrammars"))
          (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      exes = {
        "AlignGlobal" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
            (hsPkgs."FormalGrammars" or ((hsPkgs.pkgs-errors).buildDepError "FormalGrammars"))
            (hsPkgs."GrammarProducts" or ((hsPkgs.pkgs-errors).buildDepError "GrammarProducts"))
            (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }