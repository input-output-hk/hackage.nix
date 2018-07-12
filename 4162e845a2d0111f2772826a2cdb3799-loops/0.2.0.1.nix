{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "loops";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Thomas Tuegel 2014";
        maintainer = "ttuegel@gmail.com";
        author = "Thomas Tuegel";
        homepage = "";
        url = "";
        synopsis = "Fast imperative-style loops";
        description = "@loops@ is a library for fast, imperative-style loops with a clean syntax.\n\nFeatures\n\n* Fast, imperative-style loops with a clean syntax. Bind (`>>=`) nests loops,\nso in `do`-notation, each subsequent line is nested inside loops that appear\nabove it.\n\n* Iteration over common data structures, like lists and vectors.\n\n* Robust performance because there is no reliance on fusion.\n\n* NEW! Loop-unrolling to arbitrary depth. Unrollable loop combinators are\nprovided in `Control.Monad.Loop.Unroll`. (The simple, \"rolled\" interface is\nstill provided in `Control.Monad.Loop`.) The unrolling depth set at the call\nsite at compile time. My benchmarks show that folding over unrolled loops is\nup to 25% faster than folding over unboxed vectors!\n\nFor best performance, please compile your code with @-O2@. You should also\nuse GHC's LLVM backend if possible; it generally produces faster executables.";
        buildType = "Simple";
      };
      components = {
        "loops" = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.loops
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          "benchs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.loops
              hsPkgs.transformers
              hsPkgs.vector
            ];
          };
        };
      };
    }