{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
      mkl = false;
      accelerate = false;
      unsafe = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hmatrix";
        version = "0.8.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://www.hmatrix.googlepages.com";
      url = "";
      synopsis = "Linear algebra and numerical computations";
      description = "Purely functional interface to basic linear algebra\nand other numerical computations, internally implemented using\nGSL, BLAS and LAPACK.";
      buildType = "Custom";
    };
    components = {
      "hmatrix" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
          (hsPkgs.storable-complex)
          (hsPkgs.process)
        ] ++ (if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ]);
        libs = pkgs.lib.optionals (_flags.mkl) (if system.isX86_64
          then [
            (pkgs.gsl)
            (pkgs.mkl_lapack)
            (pkgs.mkl_intel_lp64)
            (pkgs.mkl_sequential)
            (pkgs.mkl_core)
          ]
          else [
            (pkgs.gsl)
            (pkgs.mkl_lapack)
            (pkgs.mkl_intel)
            (pkgs.mkl_sequential)
            (pkgs.mkl_core)
          ]) ++ pkgs.lib.optional (_flags.accelerate) (pkgs.gsl);
        frameworks = pkgs.lib.optional (_flags.accelerate) (pkgs.Accelerate);
      };
    };
  }