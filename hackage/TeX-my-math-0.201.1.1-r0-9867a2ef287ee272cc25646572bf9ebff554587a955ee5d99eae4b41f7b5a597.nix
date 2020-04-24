{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "TeX-my-math"; version = "0.201.1.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HaTeX" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."dumb-cas" or ((hsPkgs.pkgs-errors).buildDepError "dumb-cas"))
          (hsPkgs."decimal-literals" or ((hsPkgs.pkgs-errors).buildDepError "decimal-literals"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          ];
        buildable = true;
        };
      tests = {
        "makeSnippets" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
            (hsPkgs."dumb-cas" or ((hsPkgs.pkgs-errors).buildDepError "dumb-cas"))
            (hsPkgs."HaTeX" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX"))
            (hsPkgs."TeX-my-math" or ((hsPkgs.pkgs-errors).buildDepError "TeX-my-math"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }