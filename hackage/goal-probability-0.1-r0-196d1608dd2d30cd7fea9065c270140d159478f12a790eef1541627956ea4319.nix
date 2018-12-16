{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "goal-probability";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sokolo@mis.mpg.de";
      author = "Sacha Sokoloski";
      homepage = "";
      url = "";
      synopsis = "Manifolds of probability distributions";
      description = "Provides probability distributions, exponential families, as well\nas things based on exponential families such as multilayer perceptrons and\nharmoniums (e.g. restricted Boltzmann machines).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mwc-random)
          (hsPkgs.mwc-random-monad)
          (hsPkgs.math-functions)
          (hsPkgs.vector)
          (hsPkgs.hmatrix)
          (hsPkgs.statistics)
          (hsPkgs.goal-core)
          (hsPkgs.goal-geometry)
        ];
      };
      exes = {
        "cross-entropy-descent" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
            (hsPkgs.goal-geometry)
            (hsPkgs.goal-probability)
          ];
        };
        "poisson-binomial" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
            (hsPkgs.goal-geometry)
            (hsPkgs.goal-probability)
          ];
        };
        "univariate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
            (hsPkgs.goal-geometry)
            (hsPkgs.goal-probability)
          ];
        };
        "multivariate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
            (hsPkgs.goal-geometry)
            (hsPkgs.goal-probability)
            (hsPkgs.vector)
          ];
        };
        "transducer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
            (hsPkgs.goal-geometry)
            (hsPkgs.goal-probability)
          ];
        };
        "transducer-field" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
            (hsPkgs.goal-geometry)
            (hsPkgs.goal-probability)
          ];
        };
        "divergence" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
            (hsPkgs.goal-geometry)
            (hsPkgs.goal-probability)
          ];
        };
        "backpropagation" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
            (hsPkgs.goal-geometry)
            (hsPkgs.goal-probability)
          ];
        };
      };
    };
  }