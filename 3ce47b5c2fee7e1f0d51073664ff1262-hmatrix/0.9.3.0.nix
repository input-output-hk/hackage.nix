{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      tests = true;
      dd = true;
      mkl = false;
      unsafe = false;
      vector = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hmatrix";
        version = "0.9.3.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://code.haskell.org/hmatrix";
      url = "";
      synopsis = "Linear algebra and numerical computation";
      description = "Purely functional interface to basic linear algebra\nand other numerical computations, internally implemented using\nGSL, BLAS and LAPACK.\n\nSee also hmatrix-special and hmatrix-glpk.";
      buildType = "Custom";
    };
    components = {
      "hmatrix" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.storable-complex)
          (hsPkgs.process)
        ] ++ pkgs.lib.optional (_flags.vector) (hsPkgs.vector)) ++ pkgs.lib.optionals (_flags.tests) [
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
        ];
        libs = (pkgs.lib.optionals (_flags.mkl) (if system.isX86_64
          then [
            (pkgs."gsl")
            (pkgs."mkl_lapack")
            (pkgs."mkl_intel_lp64")
            (pkgs."mkl_sequential")
            (pkgs."mkl_core")
          ]
          else [
            (pkgs."gsl")
            (pkgs."mkl_lapack")
            (pkgs."mkl_intel")
            (pkgs."mkl_sequential")
            (pkgs."mkl_core")
          ]) ++ pkgs.lib.optional (system.isOsx) (pkgs."gsl")) ++ pkgs.lib.optionals (system.isWindows) [
          (pkgs."gsl-0")
          (pkgs."blas")
          (pkgs."lapack")
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Accelerate");
      };
    };
  }