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
    flags = { doctests = true; benchmarks = true; doclinks = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "clash-prelude"; version = "0.11.2"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2013-2016, University of Twente,\n2017, QBayLogic";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware - Prelude library";
      description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The CλaSH compiler transforms these high-level descriptions to\nlow-level synthesizable VHDL, Verilog, or SystemVerilog.\n\nFeatures of CλaSH:\n\n* Strongly typed, but with a very high degree of type inference, enabling both\nsafe and fast prototyping using concise descriptions.\n\n* Interactive REPL: load your designs in an interpreter and easily test all\nyour component without needing to setup a test bench.\n\n* Higher-order functions, with type inference, result in designs that are\nfully parametric by default.\n\n* Synchronous sequential circuit design based on streams of values, called\n@Signal@s, lead to natural descriptions of feedback loops.\n\n* Support for multiple clock domains, with type safe clock domain crossing.\n\n\nThis package provides:\n\n* Prelude library containing datatypes and functions for circuit design\n\nTo use the library:\n\n* Import \"CLaSH.Prelude\"\n\n* Additionally import \"CLaSH.Prelude.Explicit\" if you want to design\nexplicitly clocked circuits in a multi-clock setting\n\nA preliminary version of a tutorial can be found in \"CLaSH.Tutorial\", for a\ngeneral overview of the library you should however check out \"CLaSH.Prelude\".\nSome circuit examples can be found in \"CLaSH.Examples\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."data-binary-ieee754" or (buildDepError "data-binary-ieee754"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."ghc-typelits-extra" or (buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."half" or (buildDepError "half"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optional (flags.doclinks) (hsPkgs."transformers" or (buildDepError "transformers"));
        };
      tests = {
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.doctests)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        };
      benchmarks = {
        "benchmark-clash-prelude" = {
          depends = (pkgs.lib).optionals (!(!flags.benchmarks)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clash-prelude" or (buildDepError "clash-prelude"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          };
        };
      };
    }