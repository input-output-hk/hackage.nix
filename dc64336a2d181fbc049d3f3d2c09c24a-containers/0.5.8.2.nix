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
      specVersion = "1.8";
      identifier = {
        name = "containers";
        version = "0.5.8.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Assorted concrete container types";
      description = "This package contains efficient general-purpose implementations\nof various basic immutable container types.  The declared cost of\neach operation is either worst-case or amortized, but remains\nvalid even if structures are shared.";
      buildType = "Simple";
    };
    components = {
      "containers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.deepseq)
        ] ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs.ghc-prim);
      };
      tests = {
        "map-lazy-properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
          ];
        };
        "map-strict-properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
          ];
        };
        "bitqueue-properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
        "set-properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
          ];
        };
        "intmap-lazy-properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
        "intmap-strict-properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
        "intset-properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
        "deprecated-properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
        "seq-properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
          ];
        };
        "map-strictness-properties" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.ChasingBottoms)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.ghc-prim)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
        "intmap-strictness-properties" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.ChasingBottoms)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.ghc-prim)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
        "intset-strictness-properties" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.ChasingBottoms)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.ghc-prim)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
      benchmarks = {
        "intmap-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
        "intset-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
        "map-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
        "sequence-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.transformers)
          ];
        };
        "set-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
        "set-operations-intmap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
          ];
        };
        "set-operations-intset" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
          ];
        };
        "set-operations-map" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
          ];
        };
        "set-operations-set" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
          ];
        };
        "lookupge-intmap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
          ];
        };
        "lookupge-map" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
          ];
        };
      };
    };
  }