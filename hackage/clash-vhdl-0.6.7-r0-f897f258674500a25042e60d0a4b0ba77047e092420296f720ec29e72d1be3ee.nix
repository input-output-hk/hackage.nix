{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clash-vhdl"; version = "0.6.7"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2015-2016 University of Twente";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware - VHDL backend";
      description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The CλaSH compiler transforms these high-level descriptions to\nlow-level synthesizable VHDL, Verilog, or SystemVerilog.\n\nFeatures of CλaSH:\n\n* Strongly typed (like VHDL), yet with a very high degree of type inference,\nenabling both safe and fast prototying using consise descriptions (like\nVerilog).\n\n* Interactive REPL: load your designs in an interpreter and easily test all\nyour component without needing to setup a test bench.\n\n* Higher-order functions, with type inference, result in designs that are\nfully parametric by default.\n\n* Synchronous sequential circuit design based on streams of values, called\n@Signal@s, lead to natural descriptions of feedback loops.\n\n* Support for multiple clock domains, with type safe clock domain crossing.\n\n\nThis package provides:\n\n* VHDL Backend";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."clash-lib" or ((hsPkgs.pkgs-errors).buildDepError "clash-lib"))
          (hsPkgs."clash-prelude" or ((hsPkgs.pkgs-errors).buildDepError "clash-prelude"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      };
    }