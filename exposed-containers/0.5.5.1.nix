{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "exposed-containers";
          version = "0.5.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vi@zalora.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A distribution of the 'containers' package, with all modules exposed.";
        description = "The source package contains efficient general-purpose implementations of\nvarious basic immutable container types.  The declared cost of each\noperation is either worst-case or amortized, but remains valid even if\nstructures are shared.\nHere we redistribute it, but with hidden modules exposed.";
        buildType = "Simple";
      };
      components = {
        exposed-containers = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.deepseq
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          map-lazy-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
          map-strict-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
          set-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
          intmap-lazy-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
          intmap-strict-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
          intset-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
          deprecated-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
          seq-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
          map-strictness-properties = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.ChasingBottoms
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.ghc-prim
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
          intmap-strictness-properties = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.ChasingBottoms
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.ghc-prim
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }