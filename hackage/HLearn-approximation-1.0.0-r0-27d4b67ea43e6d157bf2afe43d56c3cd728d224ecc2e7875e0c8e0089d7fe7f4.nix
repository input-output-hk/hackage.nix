{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HLearn-approximation";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Approximation algorithms for NP-hard problems";
      buildType = "Simple";
    };
    components = {
      "HLearn-approximation" = {
        depends  = [
          (hsPkgs.HLearn-algebra)
          (hsPkgs.HLearn-distributions)
          (hsPkgs.HLearn-datastructures)
          (hsPkgs.ConstraintKinds)
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.list-extras)
          (hsPkgs.heap)
        ];
      };
    };
  }