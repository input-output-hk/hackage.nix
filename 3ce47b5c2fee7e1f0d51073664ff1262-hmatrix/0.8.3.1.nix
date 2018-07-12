{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      mkl = false;
      unsafe = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hmatrix";
          version = "0.8.3.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Alberto Ruiz <aruiz@um.es>";
        author = "Alberto Ruiz";
        homepage = "http://code.haskell.org/hmatrix";
        url = "";
        synopsis = "Linear algebra and numerical computation";
        description = "Purely functional interface to basic linear algebra\nand other numerical computations, internally implemented using\nGSL, BLAS and LAPACK.";
        buildType = "Custom";
      };
      components = {
        "hmatrix" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.haskell98
            hsPkgs.QuickCheck
            hsPkgs.HUnit
            hsPkgs.storable-complex
            hsPkgs.process
          ];
          libs = pkgs.lib.optionals _flags.mkl (if system.isX86_64
            then [
              pkgs.gsl
              pkgs.mkl_lapack
              pkgs.mkl_intel_lp64
              pkgs.mkl_sequential
              pkgs.mkl_core
            ]
            else [
              pkgs.gsl
              pkgs.mkl_lapack
              pkgs.mkl_intel
              pkgs.mkl_sequential
              pkgs.mkl_core
            ]) ++ pkgs.lib.optional system.isOsx pkgs.gsl;
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
        };
      };
    }