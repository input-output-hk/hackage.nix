{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      atlas = false;
      gsl = false;
      mkl = false;
      veclib = false;
      custom = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "blas";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
        maintainer = "Patrick Perry <patperry@stanford.edu>";
        author = "Patrick Perry";
        homepage = "http://stat.stanford.edu/~patperry/code/blas";
        url = "";
        synopsis = "Bindings to the BLAS library";
        description = "The BLAS (Basic Linear Algebra Subprograms) are routines that provide\nstandard building blocks for performing basic vector and matrix operations.\nThe Level 1 BLAS perform scalar, vector and vector-vector operations, the\nLevel 2 BLAS perform matrix-vector operations, and the Level 3 BLAS perform\nmatrix-matrix operations. Because the BLAS are efficient, portable, and\nwidely available, they are commonly used in the development of high quality\nlinear algebra software, LAPACK for example.\n\nFor more information, see the Netlib BLAS webpage:\n<http://www.netlib.org/blas/>\n";
        buildType = "Simple";
      };
      components = {
        "blas" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ieee
            hsPkgs.permutation
            hsPkgs.storable-complex
          ];
          libs = (((pkgs.lib.optionals _flags.atlas [
            pkgs.cblas
            pkgs.atlas
          ] ++ pkgs.lib.optional _flags.gsl pkgs.gslcblas) ++ pkgs.lib.optionals _flags.mkl (if system.isX86_64
            then [
              pkgs.mkl_lapack
              pkgs.mkl_intel_lp64
              pkgs.mkl_sequential
              pkgs.mkl_core
            ]
            else [
              pkgs.mkl_lapack
              pkgs.mkl_intel
              pkgs.mkl_sequential
              pkgs.mkl_core
            ])) ++ pkgs.lib.optional _flags.veclib pkgs.cblas) ++ pkgs.lib.optionals (!_flags.atlas && !_flags.gsl && !_flags.mkl && !_flags.veclib && !_flags.custom) [
            pkgs.cblas
            pkgs.atlas
          ];
        };
      };
    }