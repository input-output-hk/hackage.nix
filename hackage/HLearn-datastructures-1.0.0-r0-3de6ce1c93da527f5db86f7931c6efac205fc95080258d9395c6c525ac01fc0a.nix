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
        name = "HLearn-datastructures";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "";
      description = "This package contains commonly used data structures";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.HLearn-algebra)
          (hsPkgs.HLearn-distributions)
          (hsPkgs.ConstraintKinds)
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.MonadRandom)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.list-extras)
        ];
      };
    };
  }