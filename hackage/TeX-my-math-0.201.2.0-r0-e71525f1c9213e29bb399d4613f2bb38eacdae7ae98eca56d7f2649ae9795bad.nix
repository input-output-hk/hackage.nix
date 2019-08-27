let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "TeX-my-math"; version = "0.201.2.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsag \$ hvl.no";
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."dumb-cas" or (buildDepError "dumb-cas"))
          (hsPkgs."decimal-literals" or (buildDepError "decimal-literals"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
          ];
        };
      exes = {
        "TeXmyMath-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."TeX-my-math" or (buildDepError "TeX-my-math"))
            (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      tests = {
        "makeSnippets" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
            (hsPkgs."dumb-cas" or (buildDepError "dumb-cas"))
            (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
            (hsPkgs."TeX-my-math" or (buildDepError "TeX-my-math"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }