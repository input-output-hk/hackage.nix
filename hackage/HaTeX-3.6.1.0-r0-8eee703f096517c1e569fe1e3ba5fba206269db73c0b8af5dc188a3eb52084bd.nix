{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HaTeX";
        version = "3.6.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz (dhelta `dot` diaz `at` gmail `dot` com)";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "The Haskell LaTeX library.";
      description = "The LaTeX project site states: \\\"LaTeX is a high-quality typesetting system\\\". This library provides\na bridge between LaTeX and Haskell, implementing the LaTeX syntax in Haskell.\n\nSome of the things you can do are:\n\nWrite LaTeX documents with all the advantages you already have in Haskell (recursion,\ntype system, high order functions, ...), create a LaTeX backend for your own program,\nmake analysis of LaTeX code through its Abstract Syntax Tree (AST), pretty-print Haskell\nvalues in LaTeX, generate TikZ scripts easily, ...\n\nSee the @examples@ directory in the source distribution to look some simple examples.\nIt would be good to get you started. The HaTeX User's Guide is available at\n<https://github.com/Daniel-Diaz/hatex-guide>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.matrix)
          (hsPkgs.containers)
        ];
      };
    };
  }