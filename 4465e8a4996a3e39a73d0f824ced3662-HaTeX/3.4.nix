{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HaTeX";
          version = "3.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Díaz (dhelta `dot` diaz `at` gmail `dot` com)";
        author = "Daniel Díaz";
        homepage = "";
        url = "";
        synopsis = "The Haskell LaTeX library.";
        description = "As it is said: \\\"LaTeX is a high-quality typesetting system\\\". This library provides\na bridge between that system and Haskell (i.e. it is a LaTeX DSL).\n\nWrite LaTeX documents with all the advantages you already have in Haskell (recursion,\ntype system, high order functions, ...), create a LaTeX backend for your own program,\nmake analysis of LaTeX code through its Abstract Syntax Tree (AST), find another way\nto pretty-printing values, ...\n\nSee the @examples@ directory in the source distribution to look some simple examples.\nIt would be good to get you started. Download the HaTeX User's Guide from\n<https://github.com/downloads/Daniel-Diaz/HaTeX-Guide/HaTeX-Guide.pdf>.";
        buildType = "Simple";
      };
      components = {
        "HaTeX" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.parsec
          ];
        };
      };
    }