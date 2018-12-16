{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "liquid-fixpoint";
        version = "0.7.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "2010-17 Ranjit Jhala, University of California, San Diego.";
      maintainer = "jhala@cs.ucsd.edu";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "https://github.com/ucsd-progsys/liquid-fixpoint";
      url = "";
      synopsis = "Predicate Abstraction-based Horn-Clause/Implication Constraint Solver";
      description = "This package is a Haskell wrapper to the SMTLIB-based\nHorn-Clause/Logical Implication constraint solver used\nfor Liquid Types.\n\nThe package includes:\n\n1. Types for Expressions, Predicates, Constraints, Solutions\n\n2. Code for solving constraints\n\nRequirements\n\nIn addition to the .cabal dependencies you require\n\n- A Z3 (<http://z3.codeplex.com>) or CVC4 (<http://cvc4.cs.nyu.edu>) binary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.syb)
          (hsPkgs.cmdargs)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bifunctors)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filemanip)
          (hsPkgs.filepath)
          (hsPkgs.ghc-prim)
          (hsPkgs.intern)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.boxes)
          (hsPkgs.parallel)
          (hsPkgs.process)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.cereal)
          (hsPkgs.text-format)
          (hsPkgs.fgl)
          (hsPkgs.fgl-visualize)
          (hsPkgs.dotgen)
          (hsPkgs.time)
          (hsPkgs.parallel-io)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.10.2") (hsPkgs.located-base)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.ascii-progress);
      };
      exes = {
        "fixpoint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.liquid-fixpoint)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-rerun)
            (hsPkgs.tasty-ant-xml)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
        "testparser" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-rerun)
            (hsPkgs.tasty-ant-xml)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ] ++ (if flags.devel
            then [
              (hsPkgs.array)
              (hsPkgs.async)
              (hsPkgs.attoparsec)
              (hsPkgs.syb)
              (hsPkgs.cmdargs)
              (hsPkgs.ansi-terminal)
              (hsPkgs.bifunctors)
              (hsPkgs.binary)
              (hsPkgs.bytestring)
              (hsPkgs.containers)
              (hsPkgs.deepseq)
              (hsPkgs.directory)
              (hsPkgs.filemanip)
              (hsPkgs.filepath)
              (hsPkgs.ghc-prim)
              (hsPkgs.intern)
              (hsPkgs.mtl)
              (hsPkgs.parsec)
              (hsPkgs.pretty)
              (hsPkgs.boxes)
              (hsPkgs.parallel)
              (hsPkgs.process)
              (hsPkgs.syb)
              (hsPkgs.text)
              (hsPkgs.transformers)
              (hsPkgs.hashable)
              (hsPkgs.unordered-containers)
              (hsPkgs.cereal)
              (hsPkgs.text-format)
              (hsPkgs.fgl)
              (hsPkgs.fgl-visualize)
              (hsPkgs.dotgen)
              (hsPkgs.time)
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.10.2") (hsPkgs.located-base)
            else [
              (hsPkgs.liquid-fixpoint)
            ]);
        };
      };
    };
  }