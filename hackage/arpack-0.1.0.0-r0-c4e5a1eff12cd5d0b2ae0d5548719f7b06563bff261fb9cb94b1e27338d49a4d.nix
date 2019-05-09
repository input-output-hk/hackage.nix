{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "arpack"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Thomas Tuegel";
      maintainer = "ttuegel@gmail.com";
      author = "Thomas Tuegel";
      homepage = "";
      url = "";
      synopsis = "Solve large scale eigenvalue problems";
      description = "Bindings to ARPACK, a Fortran package implementing the implicitly restarted\nArnoldi (Lanczos) method for solving large scale eigenvalue problems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.concurrent-extra)
          (hsPkgs.containers)
          (hsPkgs.control-monad-loop)
          (hsPkgs.data-default)
          (hsPkgs.hmatrix)
          (hsPkgs.ieee754)
          (hsPkgs.storable-complex)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          ];
        pkgconfig = [ (pkgconfPkgs."arpack") ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.arpack)
            (hsPkgs.base)
            (hsPkgs.hmatrix)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
            ];
          };
        };
      };
    }