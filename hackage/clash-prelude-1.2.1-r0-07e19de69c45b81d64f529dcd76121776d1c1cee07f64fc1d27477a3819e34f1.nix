{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      large-tuples = true;
      super-strict = false;
      strict-mapsignal = false;
      multiple-hidden = false;
      doctests = true;
      unittests = true;
      benchmarks = true;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "clash-prelude"; version = "1.2.1"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2013-2016, University of Twente,\n2016-2017, Myrtle Software Ltd,\n2017-2019, QBayLogic B.V., Google Inc.";
      maintainer = "QBayLogic B.V. <devops@qbaylogic.com>";
      author = "The Clash Authors";
      homepage = "https://clash-lang.org/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware - Prelude library";
      description = "Clash is a functional hardware description language that borrows both its\nsyntax and semantics from the functional programming language Haskell. The\nClash compiler transforms these high-level descriptions to low-level\nsynthesizable VHDL, Verilog, or SystemVerilog.\n\nFeatures of Clash:\n\n* Strongly typed, but with a very high degree of type inference, enabling both\nsafe and fast prototyping using concise descriptions.\n\n* Interactive REPL: load your designs in an interpreter and easily test all\nyour component without needing to setup a test bench.\n\n* Higher-order functions, with type inference, result in designs that are\nfully parametric by default.\n\n* Synchronous sequential circuit design based on streams of values, called\n@Signal@s, lead to natural descriptions of feedback loops.\n\n* Support for multiple clock domains, with type safe clock domain crossing.\n\n\nThis package provides:\n\n* Prelude library containing datatypes and functions for circuit design\n\nTo use the library:\n\n* Import \"Clash.Prelude\"\n\n* Alternatively, if you want to explicitly route clock and reset ports,\nfor more straightforward multi-clock designs, you can import the\n\"Clash.Explicit.Prelude\" module. Note that you should not import\n\"Clash.Prelude\" and \"Clash.Explicit.Prelude\" at the same time as they\nhave overlapping definitions.\n\nA preliminary version of a tutorial can be found in \"Clash.Tutorial\", for a\ngeneral overview of the library you should however check out \"Clash.Prelude\".\nSome circuit examples can be found in \"Clash.Examples\".";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."ghc-typelits-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."half" or ((hsPkgs.pkgs-errors).buildDepError "half"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."recursion-schemes" or ((hsPkgs.pkgs-errors).buildDepError "recursion-schemes"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or ((hsPkgs.pkgs-errors).buildDepError "th-abstraction"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          (hsPkgs."th-orphans" or ((hsPkgs.pkgs-errors).buildDepError "th-orphans"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."type-errors" or ((hsPkgs.pkgs-errors).buildDepError "type-errors"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.doctests)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."clash-prelude" or ((hsPkgs.pkgs-errors).buildDepError "clash-prelude"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.6") (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"));
          buildable = if !flags.doctests then false else true;
          };
        "unittests" = {
          depends = (pkgs.lib).optionals (!(!flags.unittests)) [
            (hsPkgs."clash-prelude" or ((hsPkgs.pkgs-errors).buildDepError "clash-prelude"))
            (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
            (hsPkgs."quickcheck-classes-base" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-classes-base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = if !flags.unittests then false else true;
          };
        };
      benchmarks = {
        "benchmark-clash-prelude" = {
          depends = (pkgs.lib).optionals (!(!flags.benchmarks)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."clash-prelude" or ((hsPkgs.pkgs-errors).buildDepError "clash-prelude"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = if !flags.benchmarks then false else true;
          };
        };
      };
    }