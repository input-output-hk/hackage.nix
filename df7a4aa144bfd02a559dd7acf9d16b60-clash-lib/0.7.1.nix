{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clash-lib";
          version = "0.7.1";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright © 2012-2016, University of Twente, 2017, QBayLogic";
        maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
        author = "Christiaan Baaij";
        homepage = "http://www.clash-lang.org/";
        url = "";
        synopsis = "CAES Language for Synchronous Hardware - As a Library";
        description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The CλaSH compiler transforms these high-level descriptions to\nlow-level synthesizable VHDL, Verilog, or SystemVerilog.\n\nFeatures of CλaSH:\n\n* Strongly typed, but with a very high degree of type inference, enabling both\nsafe and fast prototyping using concise descriptions.\n\n* Interactive REPL: load your designs in an interpreter and easily test all\nyour component without needing to setup a test bench.\n\n* Higher-order functions, with type inference, result in designs that are\nfully parametric by default.\n\n* Synchronous sequential circuit design based on streams of values, called\n@Signal@s, lead to natural descriptions of feedback loops.\n\n* Support for multiple clock domains, with type safe clock domain crossing.\n\n\nThis package provides:\n\n* The CoreHW internal language: SystemF + Letrec + Case-decomposition\n\n* The normalisation process that brings CoreHW in a normal form that can be\nconverted to a netlist\n\n* Blackbox/Primitive Handling\n\n\nFront-ends (for: parsing, typecheck, etc.) are provided by separate packages:\n\n* <http://hackage.haskell.org/package/clash-ghc GHC/Haskell Frontend>\n\n* <https://github.com/christiaanb/Idris-dev Idris Frontend>\n\n\nPrelude library: <http://hackage.haskell.org/package/clash-prelude>";
        buildType = "Simple";
      };
      components = {
        clash-lib = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.clash-prelude
            hsPkgs.concurrent-supply
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.errors
            hsPkgs.fgl
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.hashable
            hsPkgs.integer-gmp
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unbound-generics
            hsPkgs.unordered-containers
            hsPkgs.uu-parsinglib
            hsPkgs.wl-pprint-text
          ];
        };
      };
    }