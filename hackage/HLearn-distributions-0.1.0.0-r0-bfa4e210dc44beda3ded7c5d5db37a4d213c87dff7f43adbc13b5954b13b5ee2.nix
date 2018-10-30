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
      specVersion = "1.8";
      identifier = {
        name = "HLearn-distributions";
        version = "0.1.0.0";
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
      "library" = {
        depends  = [
          (hsPkgs.HLearn-algebra)
          (hsPkgs.ConstraintKinds)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.list-extras)
          (hsPkgs.containers)
          (hsPkgs.statistics)
          (hsPkgs.QuickCheck)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.process)
          (hsPkgs.MonadRandom)
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