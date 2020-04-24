{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clash-ghc"; version = "0.6.24"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2012-2016 University of Twente";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware";
      description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The CλaSH compiler transforms these high-level descriptions to\nlow-level synthesizable VHDL, Verilog, or SystemVerilog.\n\nFeatures of CλaSH:\n\n* Strongly typed (like VHDL), yet with a very high degree of type inference,\nenabling both safe and fast prototying using consise descriptions (like\nVerilog).\n\n* Interactive REPL: load your designs in an interpreter and easily test all\nyour component without needing to setup a test bench.\n\n* Higher-order functions, with type inference, result in designs that are\nfully parametric by default.\n\n* Synchronous sequential circuit design based on streams of values, called\n@Signal@s, lead to natural descriptions of feedback loops.\n\n* Support for multiple clock domains, with type safe clock domain crossing.\n\n\nThis package provides:\n\n* CλaSH Compiler binary using GHC/Haskell as a frontend\n\n\nPrelude library: <http://hackage.haskell.org/package/clash-prelude>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "clash" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unbound-generics" or ((hsPkgs.pkgs-errors).buildDepError "unbound-generics"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."clash-lib" or ((hsPkgs.pkgs-errors).buildDepError "clash-lib"))
            (hsPkgs."clash-systemverilog" or ((hsPkgs.pkgs-errors).buildDepError "clash-systemverilog"))
            (hsPkgs."clash-vhdl" or ((hsPkgs.pkgs-errors).buildDepError "clash-vhdl"))
            (hsPkgs."clash-verilog" or ((hsPkgs.pkgs-errors).buildDepError "clash-verilog"))
            (hsPkgs."clash-prelude" or ((hsPkgs.pkgs-errors).buildDepError "clash-prelude"))
            (hsPkgs."ghc-typelits-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-extra"))
            (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ] ++ (if system.isWindows
            then [
              (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
              ]
            else [
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ]);
          buildable = true;
          };
        };
      };
    }