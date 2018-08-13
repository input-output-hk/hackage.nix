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
      specVersion = "1.6";
      identifier = {
        name = "bayes-stack";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Ben Gamari";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "https://github.com/bgamari/bayes-stack";
      url = "";
      synopsis = "Framework for inferring generative probabilistic models\nwith Gibbs sampling";
      description = "bayes-stack is a framework for inference on generative\nprobabilistic models. The framework uses Gibbs sampling,\nalthough is suitable for other iterative update methods.";
      buildType = "Simple";
    };
    components = {
      "bayes-stack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.deepseq)
          (hsPkgs.random-source)
          (hsPkgs.random-fu)
          (hsPkgs.rvar)
          (hsPkgs.containers)
          (hsPkgs.enummapset)
          (hsPkgs.ghc-prim)
          (hsPkgs.vector)
          (hsPkgs.mwc-random)
          (hsPkgs.pretty)
          (hsPkgs.cereal)
          (hsPkgs.logfloat)
          (hsPkgs.digamma)
          (hsPkgs.gamma)
          (hsPkgs.statistics)
        ];
      };
    };
  }