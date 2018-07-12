{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      z3mem = false;
      build-external = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "liquid-fixpoint";
          version = "0.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2010-15 Ranjit Jhala, University of California, San Diego.";
        maintainer = "jhala@cs.ucsd.edu";
        author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
        homepage = "https://github.com/ucsd-progsys/liquid-fixpoint";
        url = "";
        synopsis = "Predicate Abstraction-based Horn-Clause/Implication Constraint Solver";
        description = "This package is a Haskell wrapper to the SMTLIB-based\nHorn-Clause/Logical Implication constraint solver used\nfor Liquid Types.\n\nThe solver itself is written in Ocaml.\n\nThe package includes:\n\n1. Types for Expressions, Predicates, Constraints, Solutions\n\n2. Code for serializing the above\n\n3. Code for parsing the results from the fixpoint.native binary\n\n4. The Ocaml fixpoint code and pre-compiled binaries\n\n5. (Deprecated) Z3 binaries if you want to link against the API.\n\nRequirements\n\nIn addition to the .cabal dependencies you require\n\n- A Z3 (<http://z3.codeplex.com>) or CVC4 (<http://cvc4.cs.nyu.edu>) binary.\nIf on Windows, please make sure to place the binary and any associated DLLs\nin your \"cabal/bin\" folder, right next to the fixpoint.native.exe binary.\n\n- An ocaml compiler (if installing with -fbuild-external).";
        buildType = "Custom";
      };
      components = {
        "liquid-fixpoint" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.syb
            hsPkgs.cmdargs
            hsPkgs.ansi-terminal
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filemanip
            hsPkgs.filepath
            hsPkgs.ghc-prim
            hsPkgs.intern
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.text-format
          ];
        };
        exes = {
          "fixpoint.native" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.syb
              hsPkgs.cmdargs
              hsPkgs.ansi-terminal
              hsPkgs.bifunctors
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.syb
              hsPkgs.text
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.text-format
              hsPkgs.liquid-fixpoint
            ];
          };
          "fixpoint" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.syb
              hsPkgs.cmdargs
              hsPkgs.ansi-terminal
              hsPkgs.bifunctors
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.syb
              hsPkgs.text
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.text-format
              hsPkgs.liquid-fixpoint
            ];
          };
        };
      };
    }