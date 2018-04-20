{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tests = true;
      dd = true;
      mkl = false;
      unsafe = false;
      vector = true;
      binary = true;
      finit = false;
      debugfpu = false;
      debugnan = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hmatrix";
          version = "0.11.0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Alberto Ruiz <aruiz@um.es>";
        author = "Alberto Ruiz";
        homepage = "http://perception.inf.um.es/hmatrix";
        url = "";
        synopsis = "Linear algebra and numerical computation";
        description = "Purely functional interface to basic linear algebra\nand other numerical computations, internally implemented using\nGSL, BLAS and LAPACK.\n\nThe Linear Algebra API is organized as follows:\n\n- \"Data.Packed\": structure manipulation\n\n- \"Numeric.Container\": simple numeric functions\n\n- \"Numeric.LinearAlgebra.Algorithms\": matrix computations\n\n- \"Numeric.LinearAlgebra\": everything + instances of standard Haskell numeric classes";
        buildType = "Custom";
      };
      components = {
        hmatrix = {
          depends  = (([
            hsPkgs.base
            hsPkgs.array
            hsPkgs.storable-complex
            hsPkgs.process
          ] ++ pkgs.lib.optional _flags.vector hsPkgs.vector) ++ pkgs.lib.optional _flags.binary hsPkgs.binary) ++ pkgs.lib.optionals _flags.tests [
            hsPkgs.QuickCheck
            hsPkgs.HUnit
            hsPkgs.random
          ];
          libs = ((if _flags.mkl && system.isX86_64
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
            ]) ++ pkgs.lib.optional system.isOsx pkgs.gsl) ++ pkgs.lib.optionals system.isWindows [
            pkgs.gsl-0
            pkgs.blas
            pkgs.lapack
          ];
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
        };
      };
    }