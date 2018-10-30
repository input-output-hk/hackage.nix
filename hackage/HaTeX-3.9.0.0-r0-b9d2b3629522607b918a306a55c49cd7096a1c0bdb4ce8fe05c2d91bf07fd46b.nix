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
      specVersion = "1.10";
      identifier = {
        name = "HaTeX";
        version = "3.9.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz (dhelta `dot` diaz `at` gmail `dot` com)";
      author = "Daniel Díaz";
      homepage = "http://daniel-diaz.github.io/projects/hatex";
      url = "";
      synopsis = "The Haskell LaTeX library.";
      description = "This library provides a bridge between LaTeX and Haskell, implementing the LaTeX /syntax/\nin Haskell.\n\nSome of the things you can do with HaTeX are:\n\nWrite LaTeX documents with all the advantages you already have in Haskell (recursion,\ntype system, high order functions, ...), create a LaTeX backend for your own program,\nparse a LaTeX file and obtain its Abstract Syntax Tree (AST), pretty-print Haskell\nvalues in LaTeX, generate TikZ scripts easily, ...\n\nSee the @examples@ directory in the source distribution to look some simple examples.\nIt would be good to get you started. The HaTeX User's Guide is available at\n<https://github.com/Daniel-Diaz/hatex-guide/blob/master/README.md>.";
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