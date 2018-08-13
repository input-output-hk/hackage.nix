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
      specVersion = "1.8";
      identifier = {
        name = "HLearn-distributions";
        version = "0.0.1.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "Distributions for use with the HLearn library";
      description = "This module is used to estimate statistical distributions from data.  The focus is a clean interface inspired by algebra.";
      buildType = "Simple";
    };
    components = {
      "HLearn-distributions" = {
        depends  = [
          (hsPkgs.HLearn-algebra)
          (hsPkgs.base)
          (hsPkgs.list-extras)
          (hsPkgs.containers)
          (hsPkgs.statistics)
          (hsPkgs.QuickCheck)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.MonadRandom)
          (hsPkgs.logfloat)
          (hsPkgs.math-functions)
          (hsPkgs.normaldistribution)
        ];
      };
      exes = {
        "HLearn-Distributions-Criterion" = {
          depends  = [
            (hsPkgs.HLearn-algebra)
            (hsPkgs.ConstraintKinds)
            (hsPkgs.HLearn-distributions)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.vector)
            (hsPkgs.statistics)
          ];
        };
        "HLearn-Distributions-SpaceTests" = {
          depends  = [
            (hsPkgs.HLearn-algebra)
            (hsPkgs.ConstraintKinds)
            (hsPkgs.HLearn-distributions)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.vector)
            (hsPkgs.logfloat)
            (hsPkgs.statistics)
          ];
        };
      };
    };
  }