{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "target";
          version = "0.1.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "eseidel@cs.ucsd.edu";
        author = "Eric Seidel";
        homepage = "";
        url = "";
        synopsis = "Generate test-suites from refinement types.";
        description = "Target is a library for testing Haskell functions based on\nproperties encoded as refinement types.\n\nThe programmer specifies the expected behavior of a\nfunction with a refinement type, and Target then checks\nthat the function satisfies the specification by\nenumerating valid inputs up to some size, calling the\nfunction, and validating the output. Target excels when the\nspace of valid inputs is a sparse subset of all possible\ninputs, e.g. when dealing with dataypes with complex\ninvariants like red-black trees.\n\n\"Test.Target\" is the main entry point and should contain\neverything you need to use Target with types from the\n\"Prelude\". \"Test.Target.Targetable\" will also be useful if\nyou want to test functions that use other types.\n\nFor information on how to /specify/ interesting properties\nwith refinement types, we have a series of\n<http://goto.ucsd.edu/~rjhala/liquid/haskell/blog/blog/categories/basic/ blog posts>\nas well as an\n<http://ucsd-progsys.github.io/liquidhaskell-tutorial/ evolving tutorial>.\nTarget uses the same specification language as LiquidHaskell,\nso the examples should carry over.\n\nFinally, Target requires either <https://z3.codeplex.com/ Z3>\n(@>=4.3@) or <http://cvc4.cs.nyu.edu/web/ CVC4> (@>=1.4@) to\nbe present in your @PATH@.";
        buildType = "Simple";
      };
      components = {
        target = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.liquid-fixpoint
            hsPkgs.liquidhaskell
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.syb
            hsPkgs.tagged
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.th-lift
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.target
              hsPkgs.ghc
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.array
              hsPkgs.tagged
              hsPkgs.mtl
              hsPkgs.ghc-prim
              hsPkgs.liquid-fixpoint
              hsPkgs.liquidhaskell
              hsPkgs.template-haskell
              hsPkgs.unordered-containers
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.cassava
              hsPkgs.SafeSemaphore
              hsPkgs.vector
              hsPkgs.xml-conduit
              hsPkgs.data-timeout
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.tagged
              hsPkgs.ghc
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.deepseq
              hsPkgs.time
              hsPkgs.target
              hsPkgs.template-haskell
              hsPkgs.liquidhaskell
              hsPkgs.liquid-fixpoint
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
            ];
          };
        };
      };
    }