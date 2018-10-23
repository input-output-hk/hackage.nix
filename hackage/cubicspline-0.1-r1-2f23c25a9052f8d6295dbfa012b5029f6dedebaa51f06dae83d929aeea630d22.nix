{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cubicspline";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman";
      homepage = "";
      url = "";
      synopsis = "Natural cubic spline interpolation.";
      description = "Natural cubic spline interpolation.";
      buildType = "Simple";
    };
    components = {
      "cubicspline" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.safe)
        ];
      };
    };
  }