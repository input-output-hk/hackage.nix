{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "FormalGrammars";
        version = "0.0.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, 2013";
      homepage = "http://www.tbi.univie.ac.at/~choener/gramprod/";
      url = "";
      synopsis = "(Context-free) grammars in formal language theory";
      description = "Context-free grammars in formal language theory are sets of\nproduction rules, non-terminal and terminal symbols. This\nlibrary provides basic data types and functions to manipulate\nsuch grammars.\n\nGrammars can be defined in a small domain-specific language\nthat is very close to typical CFG notation.\n\nIn addition, TemplateHaskell and QuasiQuoting functionality\nallow embedding thusly defined grammars in Haskell programs.\nADPfusion then turns such a grammar into an efficient dynamic\nprogram. It is also possible to generate Haskell modules that\ncontain the resulting grammar, signature and algebra product.\n\nAlternatives are ansi- or LaTeX-based pretty-printing for users\nthat want to implement their CFG in another language than\nHaskell.\n\n\n\nFormal background can be found in two papers:\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler\nProduct Grammars for Alignment and Folding\nsubmitted\n@\nand\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler\nHow to Multiply Dynamic Programming Algorithms\nBrazilian Symposium on Bioinformatics (BSB 2013)\nLecture Notes in Bioinformatics 8213, Springer, Heidelberg\n@";
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
          (hsPkgs.repa)
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
          depends  = [ (hsPkgs.cmdargs) ];
        };
      };
    };
  }