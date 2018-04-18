{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "TeX-my-math";
          version = "0.201.1.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "(@) jsagemue \$ uni-koeln.de";
        author = "Justus Sagemüller";
        homepage = "http://github.com/leftaroundabout/Symbolic-math-HaTeX";
        url = "";
        synopsis = "Render general Haskell math to LaTeX. Or: math typesetting with high signal-to-noise–ratio.";
        description = "For tl;dr: look at <https://github.com/leftaroundabout/Symbolic-math-HaTeX/blob/master/EXAMPLES.md>.\n\nThis is an attempt to get convenient math syntax in HaTeX (i.e., in data structures\ncompatible \\/ convertable to those from <http://hackage.haskell.org/package/HaTeX>).\n\nThe idea is to combine these features:\n\n* Full access to the math-typesetting power of LaTeX. It should be possible to express\nany formula that might be found in a typical mathematics or physics journal article.\nThis should also include expression which are not quite well-defined from a programming\npoint of view, but are clear to the intended audience.\n\n* Idiomatic Haskell syntax. Who wants to bother with unreadable expressions involving\neither hundreds of double-backslashes or extra syntax overhead in wrapping them\nexplicitly into HaTeX?\n\nIdeally, one would write expressions as if only meaning Haskell to /calculate/ them,\nbut get the result back as a full pretty-printing LaTeX math string. /And the actual\ncalculated result as well/, if possible!\n\nTo this end, we use a minimal symbolic-manipulation EDSL, namely\n<http://hackage.haskell.org/package/dumb-cas dumb-cas>, set up in a way so the\nleaves of the syntax tree, i.e. the individual symbols, are represented by LaTeX\nexpressions in memory and by single-letter variables in the Haskell code.\nThese can then be combined with operators corresponding to LaTeX's maths operators,\nto obtain a very compact and almost WYSIWYG-like code appearance, while retaining\nthe ability to apply any LaTeX-specific tweaks whenever necessary. At the same\ntime, because the AST is fully precedence-aware, it is safely possible to transform\nthe expressions via e.g. Template Haskell, to actually compute concrete numerical\nresults, or apply exact symbolic-manipulation techniques.";
        buildType = "Simple";
      };
      components = {
        TeX-my-math = {
          depends  = [
            hsPkgs.base
            hsPkgs.HaTeX
            hsPkgs.vector-space
            hsPkgs.dumb-cas
            hsPkgs.decimal-literals
            hsPkgs.text
            hsPkgs.void
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
          ];
        };
        tests = {
          makeSnippets = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.haskell-src-meta
              hsPkgs.dumb-cas
              hsPkgs.HaTeX
              hsPkgs.TeX-my-math
              hsPkgs.text
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
        };
      };
    }