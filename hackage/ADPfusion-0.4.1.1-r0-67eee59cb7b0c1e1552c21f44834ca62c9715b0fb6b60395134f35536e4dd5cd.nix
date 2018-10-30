{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      examples = false;
      debug = false;
    };
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "ADPfusion";
        version = "0.4.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2011-2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2011-2015";
      homepage = "https://github.com/choener/ADPfusion";
      url = "";
      synopsis = "Efficient, high-level dynamic programming.";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nADPfusion combines stream-fusion (using the stream interface\nprovided by the vector library) and type-level programming to\nprovide highly efficient dynamic programming combinators.\n\nADPfusion allows writing dynamic programs for single- and\nmulti-tape problems. Inputs can be sequences, or sets. New\ninput types can be defined, without having to rewrite this\nlibrary thanks to the open-world assumption of ADPfusion.\n\nThe library provides the machinery for Outside and Ensemble\nalgorithms as well. Ensemble algorithms combine Inside and\nOutside calculations.\n\nStarting with version 0.4.1 we support writing multiple\ncontext-free grammars (interleaved syntactic variables). Such\ngrammars have applications in bioinformatics and linguistics.\n\nThe homepage provides a number of tutorial-style examples, with\nlinear and context-free grammars over sequence and set inputs.\n\nThe formal background for generalized algebraic dynamic\nprogrmaming and ADPfusion is described in a number of papers.\nThese can be found on the gADP homepage and in the README.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bits)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.mmorph)
          (hsPkgs.monad-primitive)
          (hsPkgs.mtl)
          (hsPkgs.OrderedBits)
          (hsPkgs.primitive)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.QuickCheck)
          (hsPkgs.strict)
          (hsPkgs.template-haskell)
          (hsPkgs.th-orphans)
          (hsPkgs.transformers)
          (hsPkgs.tuple)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "NeedlemanWunsch" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
          ];
        };
        "Nussinov" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
          ];
        };
        "PartNussinov" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.log-domain)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
          ];
        };
        "Durbin" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
          ];
        };
        "Pseudoknot" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
          ];
        };
        "OverlappingPalindromes" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
          ];
        };
        "SplitTests" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
      benchmarks = {
        "performance" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ADPfusion)
            (hsPkgs.BenchmarkHistory)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }