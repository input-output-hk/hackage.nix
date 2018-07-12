{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "linear-algebra-cblas";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010. Patrick Perry <patperry@gmail.com>, Carter Schonwald <carter atsign wellposed dot com> 2012";
        maintainer = "Carter Schonwald <carter atsign wellposed dot com>";
        author = "Patrick Perry, Carter Schonwald";
        homepage = "http://github.com/cartazio/hs-cblas";
        url = "";
        synopsis = "A linear algebra library with bindings to BLAS and LAPACK";
        description = "Note There are some known bugs in this code, do not use it in production!\nthis package is meant mostly for easy cblas vs haskell benchmarks, not real use.\n\n\nThe BLAS (Basic Linear Algebra Subprograms) are routines that provide\nstandard building blocks for performing basic vector and matrix operations.\nThe Level 1 BLAS perform scalar, vector and vector-vector operations, the\nLevel 2 BLAS perform matrix-vector operations, and the Level 3 BLAS perform\nmatrix-matrix operations. Because the BLAS are efficient, portable, and\nwidely available, they are commonly used in the development of high quality\nlinear algebra software, LAPACK for example.\n\nFor more information, see the Netlib BLAS webpage:\n<http://www.netlib.org/blas/>\n";
        buildType = "Configure";
      };
      components = {
        "linear-algebra-cblas" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ieee754
            hsPkgs.storable-complex
            hsPkgs.vector
            hsPkgs.QuickCheck
          ];
        };
        exes = {
          "test-hs-linear-algebra" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }