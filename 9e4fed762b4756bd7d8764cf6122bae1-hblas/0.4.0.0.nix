{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      openblas = false;
      cblas = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hblas";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "carter at wellposed dot com";
        author = "Carter Tazio Schonwald";
        homepage = "http://github.com/wellposed/hblas/";
        url = "";
        synopsis = "Human friendly BLAS and Lapack bindings for Haskell.";
        description = "User friendly, simple bindings to BLAS and Lapack. Easy to extend and use.\n\nHBLAS assumes you have BLAS and LAPACK installed. Users on OSX already\nhave a BLAS and LAPACK installed for them. Users on LINUX and similar\nplatforms will need to do the system equivalent of @sudo apt-get install libblas liblapack@.\n\nHBLAS  is not intended to be a library for end user array operations,\nbut rather an easy adaptor for calling BLAS and LAPACK routines in their\nfull generality from your end-user haskell linear algebra / array library\nof choice.\n\nHBLAS roughly mirrors the naming conventions and datatype names of  the standard\nBLAS and LAPACK libraries. Those of you who are familiar with these conventions\nand moderately comfortable with haskell will feel right at home.\n\nIf you are not familiar with the the operations and conventions of BLAS and\nLapack, please read the\n<https://software.intel.com/sites/products/documentation/hpc/mkl/mklman/index.htm Intel MKL BLAS and LAPACK documention>,\nyou'll learn a lot about what BLAS and LAPACK can do.\n\nHBLAS doesn't provide every BLAS and LAPACK operation currently, but\nis designed so that adding support for new operations is quite easy!";
        buildType = "Simple";
      };
      components = {
        hblas = {
          depends  = [
            hsPkgs.base
            hsPkgs.storable-complex
            hsPkgs.primitive
            hsPkgs.vector
          ];
          libs = ((pkgs.lib.optionals _flags.openblas [
            pkgs.openblas
            pkgs.pthread
          ] ++ pkgs.lib.optionals (system.isWindows && !_flags.openblas) [
            pkgs.blas
            pkgs.lapack
          ]) ++ pkgs.lib.optionals (!system.isWindows && !system.isOsx && !_flags.openblas) [
            pkgs.blas
            pkgs.lapack
          ]) ++ pkgs.lib.optional _flags.cblas pkgs.cblas;
          frameworks = pkgs.lib.optional (system.isOsx && !_flags.openblas) pkgs.Accelerate;
        };
        tests = {
          unit-testsuite = {
            depends  = [
              hsPkgs.hblas
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.hspec
              hsPkgs.primitive
            ];
          };
        };
      };
    }