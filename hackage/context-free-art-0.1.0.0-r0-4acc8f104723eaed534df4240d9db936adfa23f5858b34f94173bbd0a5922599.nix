{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "context-free-art"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "414owen@gmail.com";
      author = "Owen Shepherd";
      homepage = "https://github.com/414owen/context-free-art";
      url = "";
      synopsis = "Generate art from context-free grammars";
      description = "\nCreate art via context free grammar production rules.\nIncludes an SVG backend.\n\n== Context free grammar primer\n\nContext free grammars consist of a set of terminal symbols, a set of\nnon-terminal symbols, and production rules that map non-terminals to\nother symbols.\n\nWith a context-free grammar, we can generate strings of terminals that\nconform to the specified language.\n\nOur language will describe graphics.\n\n== Example\n\n> import Art.ContextFree\n> import Data.List.NonEmpty\n>\n> -- let's define a Production rule\n> a = Circle 1\n>\n> -- this will produce an IO Svg from the blaze-svg package\n> -- to turn it into a string we can use one of the `blaze-svg` renderers\n> graphic1 = interpret \$ Circle 1\n>\n> -- let's create a non-terminal, at every layer,\n> -- this will have an 85% chance of rendering another circle\n> circles = NonTerminal \$ (85, [Move (2, 0)], Circle 1 :| [circles]) :| []";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-svg" or ((hsPkgs.pkgs-errors).buildDepError "blaze-svg"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-svg" or ((hsPkgs.pkgs-errors).buildDepError "blaze-svg"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
            (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }