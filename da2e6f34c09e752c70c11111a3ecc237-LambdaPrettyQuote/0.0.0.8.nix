{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "LambdaPrettyQuote";
          version = "0.0.0.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "http://github.com/jfischoff/LambdaPrettyQuote";
        url = "";
        synopsis = "Quasiquoter, and Arbitrary helpers for the lambda calculus.";
        description = "CHANGES -- 0.0.0.2 added \\\"anti\\\" expressions for the quasiquoter to capture variables from the environment. Also added a pattern quasiquoter.";
        buildType = "Simple";
      };
      components = {
        LambdaPrettyQuote = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.test-framework-quickcheck2
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework
            hsPkgs.lambda-ast
            hsPkgs.HUnit
            hsPkgs.DebugTraceHelpers
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.parsec
            hsPkgs.uniplate
            hsPkgs.syb
            hsPkgs.mtl
            hsPkgs.tuple
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework
              hsPkgs.lambda-ast
              hsPkgs.HUnit
              hsPkgs.DebugTraceHelpers
              hsPkgs.template-haskell
              hsPkgs.transformers
              hsPkgs.parsec
              hsPkgs.uniplate
              hsPkgs.th-instances
              hsPkgs.syb
              hsPkgs.mtl
              hsPkgs.derive
              hsPkgs.tuple
              hsPkgs.checkers
            ];
          };
        };
      };
    }