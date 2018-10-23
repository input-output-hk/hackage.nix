{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "qd-vec";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Data.Vec.NearZero instances for Numeric.QD types";
      description = "This package provides instances of Vec's NearZero for qd's types.";
      buildType = "Simple";
    };
    components = {
      "qd-vec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.qd)
          (hsPkgs.Vec)
        ];
      };
    };
  }