{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      doctests = true;
      benchmarks = true;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "clash-prelude";
        version = "0.99.1";
      };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2013-2016, University of Twente,\n2016-2017, Myrtle Software Ltd,\n2017     , QBayLogic, Google Inc.";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware - Prelude library";
      description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The CλaSH compiler transforms these high-level descriptions to\nlow-level synthesizable VHDL, Verilog, or SystemVerilog.\n\nFeatures of CλaSH:\n\n* Strongly typed, but with a very high degree of type inference, enabling both\nsafe and fast prototyping using concise descriptions.\n\n* Interactive REPL: load your designs in an interpreter and easily test all\nyour component without needing to setup a test bench.\n\n* Higher-order functions, with type inference, result in designs that are\nfully parametric by default.\n\n* Synchronous sequential circuit design based on streams of values, called\n@Signal@s, lead to natural descriptions of feedback loops.\n\n* Support for multiple clock domains, with type safe clock domain crossing.\n\n\nThis package provides:\n\n* Prelude library containing datatypes and functions for circuit design\n\nTo use the library:\n\n* Import \"Clash.Prelude\"\n\n* Alternatively, if you want to explicitly route clock and reset ports,\nfor more straightforward multi-clock designs, you can import the\n\"Clash.Explicit.Prelude\" module. Note that you should not import\n\"Clash.Prelude\" and \"Clash.Explicit.Prelude\" at the same time as they\nhave overlapping definitions.\n\nA preliminary version of a tutorial can be found in \"Clash.Tutorial\", for a\ngeneral overview of the library you should however check out \"Clash.Prelude\".\nSome circuit examples can be found in \"Clash.Examples\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.constraints)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.data-default)
          (hsPkgs.integer-gmp)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.ghc-typelits-extra)
          (hsPkgs.ghc-typelits-knownnat)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.half)
          (hsPkgs.lens)
          (hsPkgs.QuickCheck)
          (hsPkgs.reflection)
          (hsPkgs.singletons)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.doctests)) [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.clash-prelude)
          ];
        };
      };
      benchmarks = {
        "benchmark-clash-prelude" = {
          depends  = pkgs.lib.optionals (!(!flags.benchmarks)) [
            (hsPkgs.base)
            (hsPkgs.clash-prelude)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }