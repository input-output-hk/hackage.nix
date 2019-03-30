{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fused-effects"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Nicolas Wu, Tom Schrijvers, Rob Rix, Patrick Thomson";
      maintainer = "robrix@github.com";
      author = "Nicolas Wu, Tom Schrijvers, Rob Rix, Patrick Thomson";
      homepage = "https://github.com/robrix/fused-effects";
      url = "";
      synopsis = "A fast, flexible, fused effect system.";
      description = "A fast, flexible, fused effect system, à la Effect Handlers in Scope, Monad Transformers and Modular Algebraic Effects: What Binds Them Together, and Fusion for Free—Efficient Algebraic Effect Handlers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.MonadRandom)
          (hsPkgs.random)
          ];
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fused-effects)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        "test" = {
          depends = [ (hsPkgs.base) (hsPkgs.fused-effects) (hsPkgs.hspec) ];
          };
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      benchmarks = {
        "benchmark" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.fused-effects) ];
          };
        };
      };
    }