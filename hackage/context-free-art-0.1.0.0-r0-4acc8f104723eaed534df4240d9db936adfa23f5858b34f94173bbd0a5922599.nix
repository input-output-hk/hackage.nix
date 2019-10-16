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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-svg" or (buildDepError "blaze-svg"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-svg" or (buildDepError "blaze-svg"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }