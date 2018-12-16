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
        name = "mwc-probability-transition";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Marco Zocca";
      maintainer = "zocca.marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/mwc-probability-transition";
      url = "";
      synopsis = "A Markov stochastic transition operator with logging";
      description = "\nThis package provides a 'Transition' type that is useful for modelling (and debugging) stochastic transition kernels (used in e.g. the integration of SDEs, Markov chain Monte Carlo algorithms etc.).\n\nIt wraps the compositional random sampling functionality of `mwc-probability` and offers structured logging via `logging-effect`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.logging-effect)
          (hsPkgs.mtl)
          (hsPkgs.mwc-probability)
          (hsPkgs.primitive)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mwc-probability)
            (hsPkgs.mwc-probability-transition)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }