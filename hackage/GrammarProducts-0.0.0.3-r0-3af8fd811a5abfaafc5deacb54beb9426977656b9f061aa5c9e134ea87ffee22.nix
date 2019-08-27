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
      specVersion = "1.6.0";
      identifier = { name = "GrammarProducts"; version = "0.0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, Ivo L. Hofacker, Peter F. Stadler, 2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, 2013";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Grammar products and higher-dimensional grammars";
      description = "An algebra of liner and context-free grammars.\n\nThis library provides the implementation of our theory of\nalgebraic operations over linear and context-free grammars.\nUsing algebraic operations, it is possible to construct complex\ndynamic programming algorithms from simpler \"atomic\" grammars.\n\nOur most important contribution is the definition of a product\nof grammars which naturally leads to alignment-like algorithms\non multiple tapes.\n\nAn efficient implementation of the resulting grammars is\npossible via the ADPfusion framework. The @FormalGrammars@\nlibrary provides the required \"Template Haskell\" machinary.\n\nAlternatively, the resulting grammars can also be\npretty-printed in various ways (LaTeX, ANSI, Haskell module\nwith signature and grammar).\n\n\n\nFormal background can be found in two papers:\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler\nProduct Grammars for Alignment and Folding\nsubmitted\n@\n\nand\n\n@\nChristian Höner zu Siederdissen, Ivo L. Hofacker, and Peter F. Stadler\nHow to Multiply Dynamic Programming Algorithms\nBrazilian Symposium on Bioinformatics (BSB 2013)\nLecture Notes in Bioinformatics 8213, Springer, Heidelberg\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."FormalGrammars" or (buildDepError "FormalGrammars"))
          (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."newtype" or (buildDepError "newtype"))
          (hsPkgs."parsers" or (buildDepError "parsers"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."trifecta" or (buildDepError "trifecta"))
          ];
        };
      exes = {
        "GrammarProductPP" = {
          depends = [ (hsPkgs."cmdargs" or (buildDepError "cmdargs")) ];
          };
        };
      };
    }