{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "LambdaPrettyQuote"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "http://github.com/jfischoff/LambdaPrettyQuote";
      url = "";
      synopsis = "Parser, pretty printer, quasiquoter, and Arbitrary helpers for the untyped lambda calculus.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework)
          (hsPkgs.lambda-ast)
          (hsPkgs.HUnit)
          (hsPkgs.DebugTraceHelpers)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.parsec)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
            (hsPkgs.lambda-ast)
            (hsPkgs.HUnit)
            (hsPkgs.DebugTraceHelpers)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            (hsPkgs.parsec)
            ];
          };
        };
      };
    }