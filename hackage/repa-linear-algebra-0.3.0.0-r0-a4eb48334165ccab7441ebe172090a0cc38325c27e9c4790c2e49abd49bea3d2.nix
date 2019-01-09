{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "repa-linear-algebra"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "https://github.com/marcinmrotek/repa-linear-algebra";
      url = "";
      synopsis = "HMatrix operations for Repa.";
      description = "HMatrix Vector and Matrix conversions to and from REPA Array F DIM1/2 (Complex) Double, together with a port of linear algebraic functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.repa)
          (hsPkgs.vector)
          ];
        };
      };
    }