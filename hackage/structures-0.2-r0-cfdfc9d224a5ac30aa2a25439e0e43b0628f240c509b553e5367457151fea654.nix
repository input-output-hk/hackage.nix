{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-properties = true;
      test-hunit = false;
      test-doctests = true;
      test-hlint = true;
      threaded = true;
      llvm = false;
      optimized = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "structures";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/structures";
      url = "";
      synopsis = "\"Advanced\" Data Structures";
      description = "This package is a playground for working with several types of advanced data structures including\nwavelet trees and cache oblivious lookahead arrays.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.deepseq)
          (hsPkgs.free)
          (hsPkgs.ghc)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.hybrid-vectors)
          (hsPkgs.lens)
          (hsPkgs.monad-st)
          (hsPkgs.parallel)
          (hsPkgs.primitive)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ];
      };
      tests = {
        "properties" = {
          depends = pkgs.lib.optionals (!(!flags.test-properties)) [
            (hsPkgs.base)
            (hsPkgs.structures)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
          ];
        };
        "hunit" = {
          depends = pkgs.lib.optionals (!(!flags.test-hunit)) [
            (hsPkgs.base)
            (hsPkgs.structures)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
          ];
        };
        "hlint" = {
          depends = pkgs.lib.optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "doctests" = {
          depends = pkgs.lib.optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.deepseq)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.semigroups)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      benchmarks = {
        "maps" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.structures)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "lookups" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.MonadRandom)
            (hsPkgs.structures)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "inserts" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.MonadRandom)
            (hsPkgs.structures)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }