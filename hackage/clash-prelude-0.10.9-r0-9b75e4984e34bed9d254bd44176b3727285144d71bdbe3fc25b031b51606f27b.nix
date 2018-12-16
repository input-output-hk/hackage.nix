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
      doclinks = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "clash-prelude";
        version = "0.10.9";
      };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2013-2016 University of Twente";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware - Prelude library";
      description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The CλaSH compiler transforms these high-level descriptions to\nlow-level synthesizable VHDL, Verilog, or SystemVerilog.\n\nFeatures of CλaSH:\n\n* Strongly typed (like VHDL), yet with a very high degree of type inference,\nenabling both safe and fast prototying using consise descriptions (like\nVerilog).\n\n* Interactive REPL: load your designs in an interpreter and easily test all\nyour component without needing to setup a test bench.\n\n* Higher-order functions, with type inference, result in designs that are\nfully parametric by default.\n\n* Synchronous sequential circuit design based on streams of values, called\n@Signal@s, lead to natural descriptions of feedback loops.\n\n* Support for multiple clock domains, with type safe clock domain crossing.\n\n\nThis package provides:\n\n* Prelude library containing datatypes and functions for circuit design\n\nTo use the library:\n\n* Import \"CLaSH.Prelude\"\n\n* Additionally import \"CLaSH.Prelude.Explicit\" if you want to design\nexplicitly clocked circuits in a multi-clock setting\n\nA preliminary version of a tutorial can be found in \"CLaSH.Tutorial\", for a\ngeneral overview of the library you should however check out \"CLaSH.Prelude\".\nSome circuit examples can be found in \"CLaSH.Examples\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.integer-gmp)
          (hsPkgs.ghc-prim)
          (hsPkgs.ghc-typelits-extra)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.lens)
          (hsPkgs.QuickCheck)
          (hsPkgs.reflection)
          (hsPkgs.singletons)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.11") (hsPkgs.th-lift)) ++ pkgs.lib.optional (flags.doclinks) (hsPkgs.transformers);
      };
      tests = {
        "doctests" = {
          depends = pkgs.lib.optionals (!(!flags.doctests)) [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }