{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "backprop"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2017";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "";
      url = "";
      synopsis = "Heterogeneous, type-safe automatic backpropagation in Haskell";
      description = "See <https://github.com/mstksg/backprop#readme README.md>.\n\nAt the moment this project is in _pre-alpha_ (/v0.0.1.0/), and is\npublished\\/put up on Hackage as a call for comments and thoughts.  It has 100%\ndocumentation coverage at the moment.  Performance was not yet a priority\nbefore this, but will be from now on.  (Previously, highest priority was\nAPI\\/usability). See the <https://github.com/mstksg/backprop#todo TODO> section\nin the README for more information on what's missing, and how one would be able";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ad)
          (hsPkgs.generics-sop)
          (hsPkgs.microlens)
          (hsPkgs.microlens-mtl)
          (hsPkgs.microlens-th)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.reflection)
          (hsPkgs.tagged)
          (hsPkgs.transformers-base)
          (hsPkgs.type-combinators)
          ];
        };
      exes = {
        "backprop-monotest" = {
          depends = [ (hsPkgs.base) (hsPkgs.backprop) ];
          };
        "backprop-neuraltest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ad)
            (hsPkgs.backprop)
            (hsPkgs.generics-sop)
            (hsPkgs.hmatrix)
            (hsPkgs.mwc-random)
            (hsPkgs.primitive)
            (hsPkgs.singletons)
            (hsPkgs.type-combinators)
            ];
          };
        "backprop-mnist" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.backprop)
            (hsPkgs.bifunctors)
            (hsPkgs.deepseq)
            (hsPkgs.finite-typelits)
            (hsPkgs.generics-sop)
            (hsPkgs.hmatrix)
            (hsPkgs.mnist-idx)
            (hsPkgs.mwc-random)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }