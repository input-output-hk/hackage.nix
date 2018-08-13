{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "GrammarProducts";
        version = "0.1.1.2";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013-2016";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2013-2016";
      homepage = "https://github.com/choener/GrammarProducts";
      url = "";
      synopsis = "Grammar products and higher-dimensional grammars";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nAn algebra of liner and context-free grammars.\n\nThis library provides the implementation of our theory of\nalgebraic operations over linear and context-free grammars.\nUsing algebraic operations, it is possible to construct complex\ndynamic programming algorithms from simpler \"atomic\" grammars.\n\nOur most important contribution is the definition of a product\nof grammars which naturally leads to alignment-like algorithms\non multiple tapes.\n\nAn efficient implementation of the resulting grammars is\npossible via the ADPfusion framework. The @FormalGrammars@\nlibrary provides the required \"Template Haskell\" machinery.\nGramarProducts can be integrated as a plugin into the existing\ntransformation from DSL to ADPfusion. Haskell users can just\nuse the QQ function provided in the .QQ module.\n\nAlternatively, the resulting grammars can also be\npretty-printed in various ways (LaTeX, ANSI, Haskell module\nwith signature and grammar).\n\nThe formal background can be found in two papers given in the\nREADME. The gADP homepage has further details, tutorials,\nexamples.\n";
      buildType = "Simple";
    };
    components = {
      "GrammarProducts" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ADPfusion)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.FormalGrammars)
          (hsPkgs.lens)
          (hsPkgs.newtype)
          (hsPkgs.parsers)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
        ];
      };
      exes = {
        "AlignGlobal" = {
          depends  = pkgs.lib.optionals (_flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.containers)
            (hsPkgs.FormalGrammars)
            (hsPkgs.GrammarProducts)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }