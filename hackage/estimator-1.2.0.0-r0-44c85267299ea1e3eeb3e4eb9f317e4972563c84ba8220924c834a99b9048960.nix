{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "estimator"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Galois, Inc.";
      maintainer = "smaccm@galois.com";
      author = "Jamey Sharp";
      homepage = "https://github.com/GaloisInc/estimator";
      url = "";
      synopsis = "State-space estimation algorithms such as Kalman Filters";
      description = "The goal of this library is to simplify implementation and use of\nstate-space estimation algorithms, such as Kalman Filters. The\ninterface for constructing models is isolated as much as possible from\nthe specifics of a given algorithm, so swapping out a Kalman Filter\nfor a Bayesian Particle Filter should involve a minimum of effort.\n\nThis implementation is designed to support symbolic types, such as\nfrom <http://hackage.haskell.org/package/sbv sbv> or\n<http://hackage.haskell.org/package/ivory ivory>. As a result you can\ngenerate code in another language, such as C, from a model written\nusing this package; or run static analyses on your model.\n\nAlso included is a sophisticated sensor fusion example in\n\"Numeric.Estimator.Model.SensorFusion\", which may be useful in its own\nright.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ad)
          (hsPkgs.distributive)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.reflection)
          ];
        };
      };
    }