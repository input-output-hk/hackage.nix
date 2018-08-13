{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "clash-ghc";
        version = "0.99.2";
      };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2012-2016, University of Twente,\n2016-2017, Myrtle Software Ltd,\n2017     , QBayLogic, Google Inc.";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware";
      description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The CλaSH compiler transforms these high-level descriptions to\nlow-level synthesizable VHDL, Verilog, or SystemVerilog.\n\nFeatures of CλaSH:\n\n* Strongly typed, but with a very high degree of type inference, enabling both\nsafe and fast prototyping using concise descriptions.\n\n* Interactive REPL: load your designs in an interpreter and easily test all\nyour component without needing to setup a test bench.\n\n* Higher-order functions, with type inference, result in designs that are\nfully parametric by default.\n\n* Synchronous sequential circuit design based on streams of values, called\n@Signal@s, lead to natural descriptions of feedback loops.\n\n* Support for multiple clock domains, with type safe clock domain crossing.\n\n\nThis package provides:\n\n* CλaSH Compiler binary using GHC/Haskell as a frontend\n\n\nPrelude library: <http://hackage.haskell.org/package/clash-prelude>";
      buildType = "Simple";
    };
    components = {
      "clash-ghc" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.process)
          (hsPkgs.hashable)
          (hsPkgs.haskeline)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unbound-generics)
          (hsPkgs.unordered-containers)
          (hsPkgs.clash-lib)
          (hsPkgs.clash-prelude)
          (hsPkgs.concurrent-supply)
          (hsPkgs.ghc-typelits-extra)
          (hsPkgs.ghc-typelits-knownnat)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.deepseq)
          (hsPkgs.time)
          (hsPkgs.ghc-boot)
          (hsPkgs.ghc-prim)
          (hsPkgs.ghci)
          (hsPkgs.uniplate)
          (hsPkgs.reflection)
          (hsPkgs.integer-gmp)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
      exes = {
        "clash" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.clash-ghc)
          ];
          libs = [ (pkgs."pthread") ];
        };
        "clashi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.clash-ghc)
          ];
          libs = [ (pkgs."pthread") ];
        };
      };
    };
  }