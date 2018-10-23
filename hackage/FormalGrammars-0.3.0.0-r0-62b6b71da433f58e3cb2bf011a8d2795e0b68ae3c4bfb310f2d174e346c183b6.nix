{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      examples = false;
      debug = false;
    };
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "FormalGrammars";
        version = "0.3.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013-2016";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2013-2016";
      homepage = "https://github.com/choener/FormalGrammars";
      url = "";
      synopsis = "(Context-free) grammars in formal language theory";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nContext-free grammars in formal language theory are sets of\nproduction rules, non-terminal and terminal symbols. This\nlibrary provides basic data types and functions to manipulate\nsuch grammars.\n\nGrammars can be defined in a small domain-specific language\nthat is very close to typical CFG notation. The DSL parser can\neasily be extended. Grammar products, for example, are\nimplemented as a single additional sub-parser.\n\nThis library also provides the machinery that transforms an\nInside grammar into the corresponding Outside grammar.\n\nStarting with version 0.2.1 it is possible to write multiple\ncontext-free grammars within this framework.\n\nIn addition, TemplateHaskell and QuasiQuoting functionality\nallow embedding thusly defined grammars in Haskell programs.\nADPfusion then turns such a grammar into an efficient dynamic\nprogram. It is also possible to generate Haskell modules that\ncontain the resulting grammar, signature and algebra product.\n\nAlternatives are ansi- or LaTeX-based pretty-printing for users\nthat want to implement their CFG in another language than\nHaskell.\n\nFormal background can be found in a number of papers which are\ngiven in the README.\n";
      buildType = "Simple";
    };
    components = {
      "FormalGrammars" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ADPfusion)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.HaTeX)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parsers)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "GrammarPP" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.cmdargs)
            (hsPkgs.FormalGrammars)
          ];
        };
        "NussinovFG" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.FormalGrammars)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
          ];
        };
        "NeedlemanWunschFG" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.containers)
            (hsPkgs.FormalGrammars)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }