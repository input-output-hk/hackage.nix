{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "containers";
          version = "0.5.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fox@ucw.cz";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Assorted concrete container types";
        description = "This package contains efficient general-purpose implementations\nof various basic immutable container types.  The declared cost of\neach operation is either worst-case or amortized, but remains\nvalid even if structures are shared.";
        buildType = "Simple";
      };
      components = {
        containers = {
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
              hsPkgs.base
              hsPkgs.ChasingBottoms
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
          intmap-strictness-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.ChasingBottoms
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }